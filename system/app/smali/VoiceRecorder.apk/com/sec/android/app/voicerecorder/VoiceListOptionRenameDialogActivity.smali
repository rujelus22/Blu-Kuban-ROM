.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionRenameDialogActivity.java"


# instance fields
.field private mBeforeFileName:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mEditText:Landroid/widget/EditText;

.field private mEventHandler:Landroid/os/Handler;

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mSelected_id:J

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

.field private mView:Landroid/view/View;

.field private mtoast:Landroid/widget/Toast;

.field private ntoast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;

    .line 71
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->ntoast:Landroid/widget/Toast;

    .line 131
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->ntoast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private init()V
    .registers 14

    .prologue
    const-wide/16 v11, -0x1

    const/16 v10, 0x36

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    const-string v6, "VoiceListOptionRenameActivity"

    const-string v7, "init"

    invoke-static {v6, v7}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 160
    .local v0, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mView:Landroid/view/View;

    .line 162
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mView:Landroid/view/View;

    const v7, 0x7f090015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    .line 163
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mView:Landroid/view/View;

    const v7, 0x7f090016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 164
    .local v3, mOkButton:Landroid/widget/Button;
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mView:Landroid/view/View;

    const v7, 0x7f090017

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 166
    .local v2, mCancelButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, mUri:Ljava/lang/String;
    if-eqz v4, :cond_9f

    .line 168
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mSelected_id:J

    .line 172
    iget-wide v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mSelected_id:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_67

    .line 176
    :cond_67
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    .line 180
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    .line 181
    .local v5, tmpString:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 183
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_82

    .line 184
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 186
    :cond_82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_d9

    .line 187
    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060030

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V

    .line 196
    :goto_98
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v1           #index:I
    .end local v5           #tmpString:Ljava/lang/String;
    :cond_9f
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 203
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 204
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 205
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    new-instance v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v6, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void

    .line 192
    .restart local v1       #index:I
    .restart local v5       #tmpString:Ljava/lang/String;
    :cond_d9
    iput-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;

    goto :goto_98
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v2, "VoiceListOptionRenameActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->init()V

    .line 86
    invoke-virtual {p0, v4}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->showDialog(I)V

    .line 88
    const v2, 0x7f060018

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;

    .line 89
    const v2, 0x7f060019

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->ntoast:Landroid/widget/Toast;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 96
    .local v1, searchManager:Landroid/app/SearchManager;
    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 102
    new-instance v2, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 104
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 328
    :goto_6
    return-object v1

    .line 306
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_3a

    .line 328
    const/4 v1, 0x0

    goto :goto_6

    .line 310
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$7;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$8;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_6

    .line 308
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 334
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 339
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 341
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 111
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    return-void
.end method

.method protected renameFile(Ljava/io/File;)V
    .registers 6
    .parameter "destFile"

    .prologue
    .line 344
    const-string v1, "VoiceListOptionRenameActivity"

    const-string v2, "renameFile()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mSelected_id:J

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, Curpath:Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 349
    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mSelected_id:J

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    .line 350
    :cond_22
    return-void
.end method
