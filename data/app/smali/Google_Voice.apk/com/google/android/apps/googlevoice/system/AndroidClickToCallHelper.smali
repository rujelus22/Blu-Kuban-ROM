.class public Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;
    }
.end annotation


# static fields
.field static final ID_CLICK_TO_CALL:I = 0x0

.field static final ID_CLICK_TO_CALL_FAILURE:I = 0x2

.field static final ID_CLICK_TO_CALL_SUCCESS:I = 0x1


# instance fields
.field activity:Landroid/app/Activity;

.field clickToCallDialog:Landroid/app/AlertDialog;

.field clickToCallFailureDialog:Landroid/app/AlertDialog;

.field clickToCallProgressDialog:Landroid/app/ProgressDialog;

.field clickToCallSuccessDialog:Landroid/app/AlertDialog;

.field destinationNumber:Ljava/lang/String;

.field destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

.field forwardingNumber:Ljava/lang/String;

.field forwardingNumberSelection:[Ljava/lang/String;

.field handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

.field private isContactFocusable:Z

.field private messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 3
    .parameter "dependencyResolver"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->isContactFocusable:Z

    .line 66
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 67
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-interface {p1, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallSuccessDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallFailureDialog()V

    return-void
.end method

.method private createClickToCallDialog()V
    .registers 9

    .prologue
    .line 136
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 138
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget v6, Lcom/google/android/apps/googlevoice/R$layout;->click_to_call_dialog:I

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    sget v7, Lcom/google/android/apps/googlevoice/R$id;->layout_root:I

    invoke-virtual {v5, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, layout:Landroid/view/View;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->destinationNumber:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    .line 146
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->forwardingNumberSpinner:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 148
    .local v0, forwardingNumberSpinner:Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 150
    .local v4, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->getForwardingNumberIndex()I

    move-result v1

    .line 155
    .local v1, index:I
    if-ltz v1, :cond_4a

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 159
    :cond_4a
    new-instance v5, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/google/android/apps/googlevoice/R$string;->click_to_call_dialog_title:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$5;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$5;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/google/android/apps/googlevoice/R$string;->connect:I

    new-instance v7, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;

    invoke-direct {v7, p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$3;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallDialog:Landroid/app/AlertDialog;

    .line 193
    return-void
.end method

.method private createClickToCallFailureDialog()V
    .registers 4

    .prologue
    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->click_to_call_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$11;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$10;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$10;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->retry_dialog_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$9;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallFailureDialog:Landroid/app/AlertDialog;

    .line 300
    return-void
.end method

.method private createClickToCallProgressDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 227
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->click_to_call_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$6;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 237
    return-void
.end method

.method private createClickToCallSuccessDialog()V
    .registers 4

    .prologue
    .line 249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->click_to_call_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$8;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$7;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallSuccessDialog:Landroid/app/AlertDialog;

    .line 265
    return-void
.end method

.method private getForwardingNumberIndex()I
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 110
    .end local v0           #i:I
    :goto_16
    return v0

    .line 104
    .restart local v0       #i:I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 110
    .end local v0           #i:I
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method

.method private showClickToCallDialog()V
    .registers 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallDialog()V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->isContactFocusable:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setFocusable(Z)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 119
    .local v0, connectButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    :goto_26
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumberTextView:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    new-instance v2, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$1;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    return-void

    .line 119
    :cond_34
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private showClickToCallFailureDialog()V
    .registers 7

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallFailureDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_7

    .line 269
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallFailureDialog()V

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallFailureDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->message_placing_click_to_call_failed:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method private showClickToCallProgressDialog()V
    .registers 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallProgressDialog()V

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->message_placing_click_to_call:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 224
    return-void
.end method

.method private showClickToCallSuccessDialog()V
    .registers 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallSuccessDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_7

    .line 241
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallSuccessDialog()V

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallSuccessDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->message_placing_click_to_call_ok:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallSuccessDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 246
    return-void
.end method


# virtual methods
.method getDestinationNumber(Landroid/text/Editable;)Ljava/lang/String;
    .registers 11
    .parameter "spannedInput"

    .prologue
    .line 200
    if-eqz p1, :cond_45

    .line 201
    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Landroid/text/Annotation;

    invoke-interface {p1, v6, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 203
    .local v1, annotations:[Landroid/text/Annotation;
    if-eqz v1, :cond_40

    array-length v6, v1

    if-lez v6, :cond_40

    .line 204
    new-instance v4, Ljava/util/HashMap;

    array-length v6, v1

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    .local v4, indexed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, arr$:[Landroid/text/Annotation;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1d
    if-ge v3, v5, :cond_2f

    aget-object v0, v2, v3

    .line 206
    .local v0, annotation:Landroid/text/Annotation;
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 208
    .end local v0           #annotation:Landroid/text/Annotation;
    :cond_2f
    const-string v6, "number"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 209
    const-string v6, "number"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    .end local v1           #annotations:[Landroid/text/Annotation;
    .end local v2           #arr$:[Landroid/text/Annotation;
    .end local v3           #i$:I
    .end local v4           #indexed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #len$:I
    :goto_3f
    return-object v6

    .line 212
    .restart local v1       #annotations:[Landroid/text/Annotation;
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3f

    .line 214
    .end local v1           #annotations:[Landroid/text/Annotation;
    :cond_45
    const-string v6, ""

    goto :goto_3f
.end method

.method public placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 4
    .parameter "clientActivity"
    .parameter "forwardingPhones"

    .prologue
    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->prepareClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->isContactFocusable:Z

    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallDialog()V

    .line 92
    return-void
.end method

.method public placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;)V
    .registers 5
    .parameter "clientActivity"
    .parameter "forwardingPhones"
    .parameter "number"

    .prologue
    .line 96
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->prepareClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->isContactFocusable:Z

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallDialog()V

    .line 100
    return-void
.end method

.method prepareClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 6
    .parameter "clientActivity"
    .parameter "forwardingPhones"

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    if-eq v1, p1, :cond_f

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->activity:Landroid/app/Activity;

    .line 75
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallSuccessDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallFailureDialog:Landroid/app/AlertDialog;

    .line 80
    :cond_f
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Phone;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 84
    :cond_25
    return-void
.end method

.method startClickToCall()V
    .registers 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createClickToCallRpc()Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;

    move-result-object v0

    .line 305
    .local v0, clickToCallRpc:Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->setForwardingNumber(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->setSubscriberNumber(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->destinationNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->setOutgoingNumber(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->setAddToAddressBook(Z)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallProgressDialog()V

    .line 310
    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->submit(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
