.class public Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;
.super Landroid/app/Activity;
.source "SafeReaderNotificationPopupActivity.java"


# static fields
.field public static final DIALOG_PROMPT:I = 0xc9

.field public static final EXTRA_BODY:Ljava/lang/String; = "EXTRA_BODY"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "EXTRA_NOTIF_ID"

.field public static final EXTRA_SENDER_ADDRESS:Ljava/lang/String; = "EXTRA_ADDRESS"

.field public static final EXTRA_SENDER_NAME:Ljava/lang/String; = "EXTRA_NAME"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "EXTRA_SUBJECT"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "EXTRA_TYPE"


# instance fields
.field private isSMS:Z

.field list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->isSMS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startRecognition()V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->isSMS:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendEmail()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 86
    .local v4, res:Landroid/content/res/Resources;
    iput-boolean v8, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->isSMS:Z

    .line 87
    const-string v6, "EXTRA_TYPE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v5

    .line 88
    .local v5, type:Lcom/vlingo/client/safereader/MessageContext$MessageType;
    const-string v6, "EXTRA_NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, contact:Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    const v6, 0x7f090357

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090359

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 90
    .local v3, options:[Ljava/lang/String;
    new-array v2, v10, [I

    fill-array-data v2, :array_74

    .line 91
    .local v2, icons:[I
    sget-object v6, Lcom/vlingo/client/safereader/MessageContext$MessageType;->EMAIL:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    if-ne v5, v6, :cond_68

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09025b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 93
    const v6, 0x7f020183

    aput v6, v2, v8

    .line 94
    iput-boolean v9, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->isSMS:Z

    .line 96
    :cond_68
    new-instance v0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;

    invoke-direct {v0, p0, v3, v2}, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    .line 97
    .local v0, adaptor:Lcom/vlingo/client/ui/IconAndOptionListAdaptor;
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    return-void

    .line 90
    nop

    :array_74
    .array-data 0x4
        0x85t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private sendEmail()V
    .registers 8

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_ADDRESS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_SUBJECT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, subject:Ljava/lang/String;
    if-eqz v0, :cond_60

    if-eqz v3, :cond_60

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090352

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090351

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?subject="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_60
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v1, i:Landroid/content/Intent;
    const/high16 v4, 0x1400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private sendSMS(Ljava/lang/String;)V
    .registers 6
    .parameter "body"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_ADDRESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1, p1}, Lcom/vlingo/client/util/SMSUtil;->getSMSIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method private declared-synchronized startRecognition()V
    .registers 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 153
    .local v1, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 154
    .local v0, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v2, "FoursquareMessageUser"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 155
    const-string v2, "vp_main"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 157
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;-><init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    invoke-static {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 169
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 170
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 171
    monitor-exit p0

    return-void

    .line 152
    .end local v0           #srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    .end local v1           #target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->list:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;-><init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->handleIntent(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 101
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 102
    .local v5, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_a2

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_d
    return-object v2

    .line 104
    :pswitch_e
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_TYPE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v6

    .line 106
    .local v6, type:Lcom/vlingo/client/safereader/MessageContext$MessageType;
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, contact:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f090357

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const v8, 0x7f090355

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090359

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    .line 108
    .local v4, options:[Ljava/lang/String;
    new-array v3, v10, [I

    fill-array-data v3, :array_a8

    .line 109
    .local v3, icons:[I
    sget-object v7, Lcom/vlingo/client/safereader/MessageContext$MessageType;->EMAIL:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    if-ne v6, v7, :cond_7e

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09025b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    .line 111
    const v7, 0x7f0201bc

    aput v7, v3, v9

    .line 114
    :cond_7e
    new-instance v0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;

    invoke-direct {v0, p0, v4, v3}, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    .line 132
    .local v0, adaptor:Lcom/vlingo/client/ui/IconAndOptionListAdaptor;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090104

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;

    invoke-direct {v8, p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;-><init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 146
    .local v2, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_d

    .line 102
    :pswitch_data_a2
    .packed-switch 0xc9
        :pswitch_e
    .end packed-switch

    .line 108
    :array_a8
    .array-data 0x4
        0xa4t 0x1t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->handleIntent(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
