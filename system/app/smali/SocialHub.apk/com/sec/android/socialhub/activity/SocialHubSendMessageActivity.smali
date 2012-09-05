.class public Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;


# static fields
.field private static EDITTEXT_FOCUS:Ljava/lang/String;

.field private static RECIPIENTLAYOUT_KEY:Ljava/lang/String;

.field private static RECIPIENT_COUNT_KEY:Ljava/lang/String;

.field private static RECIPIENT_ID_KEY:Ljava/lang/String;

.field private static RECIPIENT_NAME_KEY:Ljava/lang/String;

.field public static final checkIntent:[Ljava/lang/String;


# instance fields
.field public final CLM_EMAIL_ADDR:I

.field public final CLM_FRIEND_ID:I

.field public final CLM_FULL_NAME:I

.field public CONTACT_PROEJCTION:[Ljava/lang/String;

.field private bIsSendWithoutSelection:Z

.field private bIsSupportDM:Z

.field private bIsSupportUsername:Z

.field private bhasFakeValue:Z

.field private bhasFocus:Z

.field private bhasFocused:Z

.field private iReciverCount:I

.field private leftButton:Landroid/widget/Button;

.field private mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

.field private mContactButton:Landroid/widget/ImageButton;

.field mContactButtonListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCountText:Landroid/widget/TextView;

.field private mEditText:Landroid/widget/EditText;

.field mEditTextFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedTextview:Landroid/widget/TextView;

.field public mIsPosting:Z

.field private mLength:I

.field private mRecipientCount:I

.field private mRecipientIds:[Ljava/lang/String;

.field private mRecipientNames:[Ljava/lang/String;

.field private mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

.field mRecipientTextChangedListener:Landroid/text/TextWatcher;

.field mRecipientTextListener:Landroid/view/View$OnKeyListener;

.field private mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

.field private mRecipientsListLayout:Landroid/widget/LinearLayout;

.field mSendMessageButtonListener:Landroid/view/View$OnClickListener;

.field private mSubjectLayout:Landroid/widget/LinearLayout;

.field private mSubjectText:Landroid/widget/EditText;

.field private miSpType:I

.field private service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "taISpType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "taActorId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "taActorName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "taCommnetType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checkIntent:[Ljava/lang/String;

    .line 134
    const-string v0, "RecipientsListLayout"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENTLAYOUT_KEY:Ljava/lang/String;

    .line 135
    const-string v0, "Names"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_NAME_KEY:Ljava/lang/String;

    .line 136
    const-string v0, "IDs"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_ID_KEY:Ljava/lang/String;

    .line 137
    const-string v0, "Count"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_COUNT_KEY:Ljava/lang/String;

    .line 138
    const-string v0, "focus"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->EDITTEXT_FOCUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 111
    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mLength:I

    .line 113
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 115
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    .line 116
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSendWithoutSelection:Z

    .line 117
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportUsername:Z

    .line 119
    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientCount:I

    .line 121
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z

    .line 124
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    .line 141
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFakeValue:Z

    .line 481
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSendMessageButtonListener:Landroid/view/View$OnClickListener;

    .line 551
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactButtonListener:Landroid/view/View$OnClickListener;

    .line 564
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditTextFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 642
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientTextChangedListener:Landroid/text/TextWatcher;

    .line 652
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$5;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientTextListener:Landroid/view/View$OnKeyListener;

    .line 822
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "email_address"

    aput-object v1, v0, v2

    const-string v1, "full_name"

    aput-object v1, v0, v3

    const-string v1, "friend_id"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CONTACT_PROEJCTION:[Ljava/lang/String;

    .line 829
    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CLM_EMAIL_ADDR:I

    .line 830
    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CLM_FULL_NAME:I

    .line 831
    iput v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->CLM_FRIEND_ID:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/util/AutoCompleteAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checktextCount(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    return p1
.end method

.method private buttonDisabled(Landroid/widget/EditText;)V
    .registers 3
    .parameter "editText"

    .prologue
    .line 706
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$6;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 735
    return-void
.end method

.method private checktextCount(II)Z
    .registers 7
    .parameter "maxTxtcount"
    .parameter "service_type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, iReplytextCount:I
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mLength:I

    .line 750
    if-le v0, p1, :cond_1b

    .line 752
    const v3, 0x7f0800aa

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 754
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    if-eqz v2, :cond_1a

    .line 755
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 761
    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method private drawAutoText()V
    .registers 3

    .prologue
    .line 835
    new-instance v0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    .line 836
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->setSNSISPType(I)V

    .line 838
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v1}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 895
    return-void
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->changeTextSizeFromLocale()V

    .line 792
    return-void
.end method

.method private enableLeftButton(I)V
    .registers 5
    .parameter "txtCount"

    .prologue
    .line 771
    const-string v0, "SocialHubSendMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLeftButton Count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    if-nez v0, :cond_27

    .line 775
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    .line 778
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    if-eqz v0, :cond_2e

    .line 780
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checkSendbtnStatus()V

    .line 782
    :cond_2e
    return-void
.end method

.method private getIntentData()V
    .registers 6

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 251
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_4a

    .line 253
    const-string v2, "taISpType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    .line 254
    const-string v2, "taReceiverId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    .line 255
    const-string v2, "taReceiverName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    .line 256
    const-string v2, "reciver_count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I

    .line 262
    new-instance v2, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v3, "5_SNS"

    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-direct {v2, v3, v4}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 266
    :try_start_36
    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    if-nez v2, :cond_4b

    .line 267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFakeValue:Z

    .line 276
    :cond_4a
    :goto_4a
    return-void

    .line 269
    :cond_4b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFakeValue:Z
    :try_end_4e
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_36 .. :try_end_4e} :catch_4f

    goto :goto_4a

    .line 271
    :catch_4f
    move-exception v0

    .line 272
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_4a
.end method

.method private getLimitationByISP(IZ)I
    .registers 6
    .parameter "isp"
    .parameter "is_comment"

    .prologue
    .line 313
    const/4 v0, -0x1

    .line 315
    .local v0, ret:I
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 316
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 318
    return v0
.end method

.method private getSavedInstanceData(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 223
    if-eqz p1, :cond_59

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, Names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, IDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v2, bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENTLAYOUT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 230
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENTLAYOUT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_59

    .line 234
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_NAME_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    .line 237
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    .line 240
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_COUNT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I

    .line 242
    sget-object v3, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->EDITTEXT_FOCUS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    .line 246
    .end local v0           #IDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #Names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_59
    return-void
.end method

.method private loadLayout()V
    .registers 10

    .prologue
    const/high16 v6, 0x200

    const/16 v5, 0x8

    const/4 v8, 0x1

    .line 328
    const v4, 0x7f030012

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setLayout(I)V

    .line 330
    const v4, 0x7f0b003d

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    .line 331
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 332
    const v4, 0x7f0b0036

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;

    .line 333
    const v4, 0x7f0b0037

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    .line 334
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    const v4, 0x7f0b003a

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactButton:Landroid/widget/ImageButton;

    .line 336
    const v4, 0x7f0b0040

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    .line 338
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v4, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->setOnRecipientsChangeListener(Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;)V

    .line 339
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->setSnsType(I)V

    .line 341
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    .line 345
    .local v3, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v4, 0x3

    :try_start_5f
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientCount:I

    .line 347
    const/16 v4, 0xf

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportUsername:Z

    .line 349
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportUsername:Z

    if-ne v4, v8, :cond_13c

    .line 351
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    if-eqz v4, :cond_86

    .line 353
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_83
    .catchall {:try_start_5f .. :try_end_83} :catchall_220
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_5f .. :try_end_83} :catch_158

    move-result-object v4

    if-nez v4, :cond_86

    .line 393
    :cond_86
    :goto_86
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawButton()V

    .line 395
    const v4, 0x7f0b003c

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    .line 396
    const v4, 0x7f0b003b

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    .line 397
    const v4, 0x7f0b0039

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    .line 398
    const v4, 0x7f0b003f

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    .line 402
    const/4 v4, 0x3

    :try_start_b6
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_b9
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_b6 .. :try_end_b9} :catch_322

    move-result v4

    if-ne v4, v8, :cond_305

    .line 404
    :try_start_bc
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;
    :try_end_be
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_bc .. :try_end_be} :catch_325

    const/4 v5, 0x0

    :try_start_bf
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_c2
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_bf .. :try_end_c2} :catch_32b

    .line 412
    const/4 v4, 0x5

    :try_start_c3
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I
    :try_end_c6
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_c3 .. :try_end_c6} :catch_32e

    move-result v2

    .line 414
    .local v2, limit_title:I
    if-lez v2, :cond_d9

    .line 416
    const/4 v4, 0x1

    :try_start_ca
    new-array v1, v4, [Landroid/text/InputFilter;
    :try_end_cc
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_ca .. :try_end_cc} :catch_331

    .line 417
    .local v1, filterArray:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    :try_start_cd
    new-instance v5, Landroid/text/InputFilter$LengthFilter;
    :try_end_cf
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_cd .. :try_end_cf} :catch_33a

    :try_start_cf
    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V
    :try_end_d2
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_cf .. :try_end_d2} :catch_33d

    :try_start_d2
    aput-object v5, v1, v4
    :try_end_d4
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_d2 .. :try_end_d4} :catch_340

    .line 418
    :try_start_d4
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;
    :try_end_d6
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_d4 .. :try_end_d6} :catch_343

    :try_start_d6
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_d9
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_d6 .. :try_end_d9} :catch_346

    .line 429
    .end local v1           #filterArray:[Landroid/text/InputFilter;
    .end local v2           #limit_title:I
    :cond_d9
    :goto_d9
    :try_start_d9
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawAutoText()V
    :try_end_dc
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_d9 .. :try_end_dc} :catch_334

    .line 430
    :try_start_dc
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    :try_end_de
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_dc .. :try_end_de} :catch_337

    const/high16 v5, 0x200

    :try_start_e0
    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V
    :try_end_e3
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_e0 .. :try_end_e3} :catch_349

    .line 432
    const/16 v4, 0xc

    :try_start_e5
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_e8
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_e5 .. :try_end_e8} :catch_34c

    move-result v4

    if-ne v4, v8, :cond_311

    .line 434
    :try_start_eb
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    :try_end_ed
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_eb .. :try_end_ed} :catch_34f

    const/4 v5, 0x1

    :try_start_ee
    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setEnabled(Z)V
    :try_end_f1
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_ee .. :try_end_f1} :catch_355

    .line 435
    :try_start_f1
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    :try_end_f3
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_f1 .. :try_end_f3} :catch_358

    const/4 v5, 0x0

    :try_start_f4
    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V
    :try_end_f7
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_f4 .. :try_end_f7} :catch_35b

    .line 443
    :goto_f7
    const/16 v4, 0xa

    :try_start_f9
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_fc
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_f9 .. :try_end_fc} :catch_35e

    move-result v4

    :try_start_fd
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z
    :try_end_ff
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_fd .. :try_end_ff} :catch_367

    .line 444
    const/16 v4, 0xd

    :try_start_101
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_104
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_101 .. :try_end_104} :catch_36a

    move-result v4

    :try_start_105
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSendWithoutSelection:Z
    :try_end_107
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_105 .. :try_end_107} :catch_36d

    .line 446
    :try_start_107
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z
    :try_end_109
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_107 .. :try_end_109} :catch_370

    :try_start_109
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setSupportByte(Z)V
    :try_end_10c
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_109 .. :try_end_10c} :catch_373

    .line 448
    const/4 v4, 0x1

    :try_start_10d
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setMode(I)V
    :try_end_110
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_10d .. :try_end_110} :catch_376

    .line 450
    :try_start_110
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;
    :try_end_112
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_110 .. :try_end_112} :catch_379

    :try_start_112
    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    :try_end_114
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_112 .. :try_end_114} :catch_37c

    const/4 v6, 0x0

    :try_start_115
    invoke-direct {p0, v5, v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getLimitationByISP(IZ)I
    :try_end_118
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_115 .. :try_end_118} :catch_37f

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x2

    :try_start_11b
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V
    :try_end_11e
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_11b .. :try_end_11e} :catch_382

    .line 452
    :try_start_11e
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;
    :try_end_120
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_11e .. :try_end_120} :catch_385

    const/4 v5, 0x0

    :try_start_121
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_124
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_121 .. :try_end_124} :catch_388

    .line 453
    :try_start_124
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getCount()I
    :try_end_127
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_124 .. :try_end_127} :catch_38b

    move-result v4

    :try_start_128
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setCount(I)V
    :try_end_12b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_128 .. :try_end_12b} :catch_38e

    .line 455
    :try_start_12b
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    :try_end_12d
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_12b .. :try_end_12d} :catch_391

    :try_start_12d
    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z
    :try_end_130
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_12d .. :try_end_130} :catch_394

    .line 457
    :try_start_130
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I
    :try_end_132
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_130 .. :try_end_132} :catch_397

    if-nez v4, :cond_13b

    .line 459
    :try_start_134
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;
    :try_end_136
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_134 .. :try_end_136} :catch_39a

    const/16 v5, 0x8

    :try_start_138
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_13b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_138 .. :try_end_13b} :catch_39d

    .line 468
    :cond_13b
    :goto_13b
    return-void

    .line 365
    :cond_13c
    :try_start_13c
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I

    if-lez v4, :cond_86

    .line 367
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    if-eqz v4, :cond_86

    .line 371
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientNames:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientIds:[Ljava/lang/String;

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_156
    .catchall {:try_start_13c .. :try_end_156} :catchall_220
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_13c .. :try_end_156} :catch_158

    goto/16 :goto_86

    .line 380
    :catch_158
    move-exception v0

    .line 382
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_159
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 384
    iget v4, v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->errorCode:I
    :try_end_15e
    .catchall {:try_start_159 .. :try_end_15e} :catchall_220

    .line 393
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawButton()V

    .line 395
    const v4, 0x7f0b003c

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    .line 396
    const v4, 0x7f0b003b

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    .line 397
    const v4, 0x7f0b0039

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    .line 398
    const v4, 0x7f0b003f

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    .line 402
    const/4 v4, 0x3

    :try_start_18e
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-ne v4, v8, :cond_2ee

    .line 404
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v2

    .line 414
    .restart local v2       #limit_title:I
    if-lez v2, :cond_1b1

    .line 416
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 417
    .restart local v1       #filterArray:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v4

    .line 418
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 429
    .end local v1           #filterArray:[Landroid/text/InputFilter;
    .end local v2           #limit_title:I
    :cond_1b1
    :goto_1b1
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawAutoText()V

    .line 430
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    .line 432
    const/16 v4, 0xc

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-ne v4, v8, :cond_2f7

    .line 434
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setEnabled(Z)V

    .line 435
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 443
    :goto_1cf
    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    .line 444
    const/16 v4, 0xd

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSendWithoutSelection:Z

    .line 446
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setSupportByte(Z)V

    .line 448
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setMode(I)V

    .line 450
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getLimitationByISP(IZ)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x2

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 452
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setCount(I)V

    .line 455
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 457
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I

    if-nez v4, :cond_13b

    .line 459
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_213
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_18e .. :try_end_213} :catch_215

    goto/16 :goto_13b

    .line 463
    :catch_215
    move-exception v0

    .line 465
    :goto_216
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_13b

    .line 463
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :catch_21b
    move-exception v0

    .line 465
    .restart local v0       #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 393
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_21f
    :goto_21f
    throw v5

    :catchall_220
    move-exception v4

    move-object v5, v4

    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawButton()V

    .line 395
    const v4, 0x7f0b003c

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    .line 396
    const v4, 0x7f0b003b

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    .line 397
    const v4, 0x7f0b0039

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    .line 398
    const v4, 0x7f0b003f

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    .line 402
    const/4 v4, 0x3

    :try_start_252
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-ne v4, v8, :cond_2d9

    .line 404
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v2

    .line 414
    .restart local v2       #limit_title:I
    if-lez v2, :cond_275

    .line 416
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 417
    .restart local v1       #filterArray:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v1, v4

    .line 418
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 429
    .end local v1           #filterArray:[Landroid/text/InputFilter;
    .end local v2           #limit_title:I
    :cond_275
    :goto_275
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawAutoText()V

    .line 430
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/high16 v6, 0x200

    invoke-virtual {v4, v6}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    .line 432
    const/16 v4, 0xc

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-ne v4, v8, :cond_2e1

    .line 434
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/MultiAutoCompleteTextView;->setEnabled(Z)V

    .line 435
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 443
    :goto_293
    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    .line 444
    const/16 v4, 0xd

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSendWithoutSelection:Z

    .line 446
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setSupportByte(Z)V

    .line 448
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setMode(I)V

    .line 450
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    iget v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getLimitationByISP(IZ)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x2

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 452
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setCount(I)V

    .line 455
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 457
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->iReciverCount:I

    if-nez v4, :cond_21f

    .line 459
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_21f

    .line 426
    :cond_2d9
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_275

    .line 439
    :cond_2e1
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_2ed
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_252 .. :try_end_2ed} :catch_21b

    goto :goto_293

    .line 426
    .restart local v0       #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_2ee
    :try_start_2ee
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1b1

    .line 439
    :cond_2f7
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_303
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_2ee .. :try_end_303} :catch_215

    goto/16 :goto_1cf

    .line 426
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_305
    :try_start_305
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;
    :try_end_307
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_305 .. :try_end_307} :catch_328

    const/16 v5, 0x8

    :try_start_309
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_30c
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_309 .. :try_end_30c} :catch_30e

    goto/16 :goto_d9

    .line 463
    :catch_30e
    move-exception v0

    goto/16 :goto_216

    .line 439
    :cond_311
    :try_start_311
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    :try_end_313
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_311 .. :try_end_313} :catch_352

    const/16 v5, 0x8

    :try_start_315
    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V
    :try_end_318
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_315 .. :try_end_318} :catch_361

    .line 440
    :try_start_318
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;
    :try_end_31a
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_318 .. :try_end_31a} :catch_364

    :try_start_31a
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_31d
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_31a .. :try_end_31d} :catch_31f

    goto/16 :goto_f7

    .line 463
    :catch_31f
    move-exception v0

    goto/16 :goto_216

    :catch_322
    move-exception v0

    goto/16 :goto_216

    :catch_325
    move-exception v0

    goto/16 :goto_216

    :catch_328
    move-exception v0

    goto/16 :goto_216

    :catch_32b
    move-exception v0

    goto/16 :goto_216

    :catch_32e
    move-exception v0

    goto/16 :goto_216

    .restart local v2       #limit_title:I
    :catch_331
    move-exception v0

    goto/16 :goto_216

    .end local v2           #limit_title:I
    :catch_334
    move-exception v0

    goto/16 :goto_216

    :catch_337
    move-exception v0

    goto/16 :goto_216

    .restart local v1       #filterArray:[Landroid/text/InputFilter;
    .restart local v2       #limit_title:I
    :catch_33a
    move-exception v0

    goto/16 :goto_216

    :catch_33d
    move-exception v0

    goto/16 :goto_216

    :catch_340
    move-exception v0

    goto/16 :goto_216

    :catch_343
    move-exception v0

    goto/16 :goto_216

    :catch_346
    move-exception v0

    goto/16 :goto_216

    .end local v1           #filterArray:[Landroid/text/InputFilter;
    .end local v2           #limit_title:I
    :catch_349
    move-exception v0

    goto/16 :goto_216

    :catch_34c
    move-exception v0

    goto/16 :goto_216

    :catch_34f
    move-exception v0

    goto/16 :goto_216

    :catch_352
    move-exception v0

    goto/16 :goto_216

    :catch_355
    move-exception v0

    goto/16 :goto_216

    :catch_358
    move-exception v0

    goto/16 :goto_216

    :catch_35b
    move-exception v0

    goto/16 :goto_216

    :catch_35e
    move-exception v0

    goto/16 :goto_216

    :catch_361
    move-exception v0

    goto/16 :goto_216

    :catch_364
    move-exception v0

    goto/16 :goto_216

    :catch_367
    move-exception v0

    goto/16 :goto_216

    :catch_36a
    move-exception v0

    goto/16 :goto_216

    :catch_36d
    move-exception v0

    goto/16 :goto_216

    :catch_370
    move-exception v0

    goto/16 :goto_216

    :catch_373
    move-exception v0

    goto/16 :goto_216

    :catch_376
    move-exception v0

    goto/16 :goto_216

    :catch_379
    move-exception v0

    goto/16 :goto_216

    :catch_37c
    move-exception v0

    goto/16 :goto_216

    :catch_37f
    move-exception v0

    goto/16 :goto_216

    :catch_382
    move-exception v0

    goto/16 :goto_216

    :catch_385
    move-exception v0

    goto/16 :goto_216

    :catch_388
    move-exception v0

    goto/16 :goto_216

    :catch_38b
    move-exception v0

    goto/16 :goto_216

    :catch_38e
    move-exception v0

    goto/16 :goto_216

    :catch_391
    move-exception v0

    goto/16 :goto_216

    :catch_394
    move-exception v0

    goto/16 :goto_216

    :catch_397
    move-exception v0

    goto/16 :goto_216

    :catch_39a
    move-exception v0

    goto/16 :goto_216

    :catch_39d
    move-exception v0

    goto/16 :goto_216
.end method

.method private setListener()V
    .registers 3

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawButton()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSendMessageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditTextFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientTextListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 479
    return-void
.end method


# virtual methods
.method public CheckRecipients()Z
    .registers 7

    .prologue
    .line 959
    const/4 v0, 0x1

    .line 960
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 961
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getInvalidRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_df

    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z

    if-nez v1, :cond_df

    .line 963
    :cond_21
    const/4 v1, 0x0

    .line 964
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getInvalidRecipient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_87

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getInvalidRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string v0, ""

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    :cond_87
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c1

    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z

    if-nez v4, :cond_c1

    .line 975
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getInvalidRecipient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    :cond_c1
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 981
    const v0, 0x104000a

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$8;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 986
    const v0, 0x1080027

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 987
    const v0, 0x7f08004c

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 988
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 990
    :cond_df
    return v0

    .line 970
    :cond_e0
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getInvalidRecipient()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f
.end method

.method public changeTextSizeFromLocale()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 684
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 685
    .local v1, lc:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, mLocale:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->LanguageSize(Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, language:I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1d

    .line 689
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 700
    :goto_17
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    invoke-static {v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->textScaleX(Landroid/widget/TextView;)V

    .line 701
    return-void

    .line 690
    :cond_1d
    const/4 v3, 0x1

    if-eq v0, v3, :cond_31

    if-eq v0, v5, :cond_31

    const/4 v3, 0x6

    if-eq v0, v3, :cond_31

    const/16 v3, 0xc

    if-eq v0, v3, :cond_31

    const/16 v3, 0x10

    if-eq v0, v3, :cond_31

    const/16 v3, 0x12

    if-ne v0, v3, :cond_39

    .line 691
    :cond_31
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const/high16 v4, 0x4150

    invoke-virtual {v3, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_17

    .line 692
    :cond_39
    const/4 v3, 0x7

    if-eq v0, v3, :cond_58

    const/16 v3, 0x9

    if-eq v0, v3, :cond_58

    const/16 v3, 0xa

    if-eq v0, v3, :cond_58

    const/16 v3, 0xe

    if-eq v0, v3, :cond_58

    const/16 v3, 0xf

    if-eq v0, v3, :cond_58

    const/16 v3, 0x14

    if-eq v0, v3, :cond_58

    const/16 v3, 0x16

    if-eq v0, v3, :cond_58

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_60

    .line 694
    :cond_58
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const/high16 v4, 0x4160

    invoke-virtual {v3, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_17

    .line 696
    :cond_60
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    const/high16 v4, 0x4180

    invoke-virtual {v3, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_17
.end method

.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 302
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 304
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mLength:I

    .line 306
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->enableLeftButton(I)V

    .line 308
    return-void
.end method

.method public checkSendbtnStatus()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 797
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 799
    .local v0, bState:Ljava/lang/Boolean;
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSendWithoutSelection:Z

    if-ne v4, v2, :cond_4c

    .line 801
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, recipent:Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 805
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 816
    .end local v1           #recipent:Ljava/lang/String;
    :cond_2c
    :goto_2c
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    if-eqz v4, :cond_4b

    .line 818
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_59

    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mLength:I

    if-eqz v5, :cond_59

    iget-wide v5, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    iget v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mLength:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_59

    :goto_48
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 820
    :cond_4b
    return-void

    .line 810
    :cond_4c
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 812
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2c

    :cond_59
    move v2, v3

    .line 818
    goto :goto_48
.end method

.method protected checkShowDiscardPopup()Z
    .registers 7

    .prologue
    .line 1107
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkShowDiscardPopup()Z

    move-result v2

    .line 1109
    .local v2, show:Z
    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    .line 1113
    .local v3, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v4, 0x3

    :try_start_b
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 1115
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    if-eqz v4, :cond_23

    .line 1118
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I
    :try_end_1f
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_b .. :try_end_1f} :catch_24

    move-result v0

    .line 1120
    .local v0, cnt:I
    if-lez v0, :cond_23

    .line 1122
    const/4 v2, 0x1

    .line 1132
    .end local v0           #cnt:I
    :cond_23
    :goto_23
    return v2

    .line 1127
    :catch_24
    move-exception v1

    .line 1129
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_23
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 900
    const-string v6, "SocialHubSendMessageActivity"

    const-string v7, "onActivityResult()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request code value - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    packed-switch p1, :pswitch_data_b8

    .line 954
    :cond_1e
    :goto_1e
    return-void

    .line 907
    :pswitch_1f
    if-eqz p3, :cond_1e

    const/4 v6, -0x1

    if-ne p2, v6, :cond_1e

    .line 909
    const-string v6, "recipients"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 917
    .local v5, ret_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    :try_start_2a
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->removeAllRecipients()V

    .line 919
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v1, contactName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v0, contactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/contacts/ContactModel;

    .line 923
    .local v4, model:Lcom/sec/android/socialhub/contacts/ContactModel;
    invoke-virtual {v4}, Lcom/sec/android/socialhub/contacts/ContactModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v4}, Lcom/sec/android/socialhub/contacts/ContactModel;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_2a .. :try_end_5e} :catchall_a5
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_2a .. :try_end_5e} :catch_5f

    goto :goto_44

    .line 936
    .end local v0           #contactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #contactName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #model:Lcom/sec/android/socialhub/contacts/ContactModel;
    :catch_5f
    move-exception v2

    .line 938
    .local v2, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_60
    invoke-virtual {v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_a5

    .line 943
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eqz v6, :cond_1e

    .line 945
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eq v6, v7, :cond_6f

    .line 946
    iput-boolean v10, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    .line 947
    :cond_6f
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    .end local v2           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :goto_71
    invoke-virtual {v6}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1e

    .line 927
    .restart local v0       #contactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #contactName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_75
    :try_start_75
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_93
    .catchall {:try_start_75 .. :try_end_93} :catchall_a5
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_75 .. :try_end_93} :catch_5f

    move-result-object v6

    if-nez v6, :cond_96

    .line 943
    :cond_96
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eqz v6, :cond_1e

    .line 945
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eq v6, v7, :cond_a2

    .line 946
    iput-boolean v10, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    .line 947
    :cond_a2
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    goto :goto_71

    .line 943
    .end local v0           #contactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #contactName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_a5
    move-exception v6

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eqz v7, :cond_b7

    .line 945
    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    if-eq v7, v8, :cond_b2

    .line 946
    iput-boolean v10, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z

    .line 947
    :cond_b2
    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 943
    :cond_b7
    throw v6

    .line 902
    :pswitch_data_b8
    .packed-switch 0xb
        :pswitch_1f
    .end packed-switch
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 1008
    packed-switch p1, :pswitch_data_22

    .line 1015
    :goto_7
    monitor-exit p0

    return-void

    .line 1011
    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 1006
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1008
    :pswitch_data_22
    .packed-switch 0x16
        :pswitch_9
    .end packed-switch
.end method

.method public onChangeRecipients(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1099
    if-nez p1, :cond_7

    .line 1100
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 1101
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->checkSendbtnStatus()V

    .line 1102
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 283
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 285
    .local v1, displayWidth:I
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    if-eqz v2, :cond_18

    .line 286
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->onResize(I)V

    .line 287
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    const-string v0, "SocialHubSendMessageActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->requestWindowFeature(I)Z

    .line 150
    invoke-virtual {p0, v3, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setShowDiscardPopup(ZZZ)V

    .line 152
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getIntentData()V

    .line 155
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getSavedInstanceData(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->loadLayout()V

    .line 159
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setListener()V

    .line 160
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->buttonDisabled(Landroid/widget/EditText;)V

    .line 162
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->requestConnect()V

    .line 165
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 206
    const-string v1, "SocialHubSendMessageActivity"

    const-string v2, "onPause()"

    const-string v3, "start onPause"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onPause()V

    .line 212
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 215
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 216
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mEditText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    .line 219
    :cond_2a
    :goto_2a
    return-void

    .line 217
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 218
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mFocusedTextview:Landroid/widget/TextView;

    goto :goto_2a
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 194
    const-string v1, "SocialHubSendMessageActivity"

    const-string v2, "onResume()"

    const-string v3, "start onResume"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->isShowingDiscardPopup()Z

    move-result v1

    if-nez v1, :cond_19

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->requestIME(Landroid/view/View;)V

    .line 202
    .end local v0           #view:Landroid/view/View;
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string v2, "SocialHubSendMessageActivity"

    const-string v3, "onSaveInstanceState()"

    const-string v4, "start onSaveInstanceState"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    if-eqz v2, :cond_42

    .line 180
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v1

    .line 182
    .local v1, Count:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, Bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_NAME_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsName()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 184
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_ID_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsID()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENT_COUNT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->EDITTEXT_FOCUS:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->RECIPIENTLAYOUT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    .end local v0           #Bundle:Landroid/os/Bundle;
    .end local v1           #Count:I
    :cond_42
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 171
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 172
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1020
    iput-boolean v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 1022
    packed-switch p4, :pswitch_data_c2

    .line 1080
    :goto_7
    return-void

    .line 1026
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1028
    invoke-static {p3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 1032
    const/4 v1, 0x1

    :try_start_12
    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1035
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFakeValue:Z

    if-eqz v0, :cond_bf

    .line 1037
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1039
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contactid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNull"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1044
    if-eqz v1, :cond_bf

    .line 1046
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_bd

    move v0, v7

    .line 1048
    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1052
    :goto_63
    if-eqz v0, :cond_88

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "5_SNS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1055
    const-string v0, "SocialHubSendMessageActivity"

    const-string v1, "onSnsCallback"

    const-string v2, "start serverSync"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_12 .. :try_end_81} :catch_a4

    .line 1074
    :goto_81
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setResultOK()V

    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->finish()V

    goto :goto_7

    .line 1059
    :cond_88
    :try_start_88
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "5_SNS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestDBSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v0, "SocialHubSendMessageActivity"

    const-string v1, "onSnsCallback"

    const-string v2, "start DBSync"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_88 .. :try_end_a3} :catch_a4

    goto :goto_81

    .line 1068
    :catch_a4
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_81

    .line 1065
    :cond_a9
    :try_start_a9
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "5_SNS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_bc
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_a9 .. :try_end_bc} :catch_a4

    goto :goto_81

    :cond_bd
    move v0, v6

    goto :goto_60

    :cond_bf
    move v0, v6

    goto :goto_63

    .line 1022
    nop

    :pswitch_data_c2
    .packed-switch 0x16
        :pswitch_8
    .end packed-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 12
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mIsPosting:Z

    .line 1088
    packed-switch p4, :pswitch_data_e

    .line 1095
    :goto_6
    return-void

    .line 1091
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_6

    .line 1088
    nop

    :pswitch_data_e
    .packed-switch 0x16
        :pswitch_7
    .end packed-switch
.end method

.method public setCount(I)V
    .registers 8
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    .line 675
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    .line 677
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mCountText:Landroid/widget/TextView;

    const-string v2, "%1$d %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bIsSupportDM:Z

    if-ne v0, v5, :cond_2c

    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    :cond_2b
    return-void

    .line 677
    :cond_2c
    const-string v0, ""

    goto :goto_22
.end method

.method public setResultOK()V
    .registers 3

    .prologue
    .line 997
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 998
    return-void
.end method
