.class public Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;
.super Landroid/app/Activity;
.source "CreateFolderActivity.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mEditText:Landroid/widget/EditText;

.field private mFile:Ljava/io/File;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocaleIntentFilter:Landroid/content/IntentFilter;

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mToast:Landroid/widget/Toast;

    .line 67
    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkLowStorage(Ljava/io/File;)Z
    .registers 10
    .parameter "dst"

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, dstFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, storageDirectory:Ljava/lang/String;
    :try_start_8
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_1a

    move-result v6

    int-to-long v2, v6

    .line 320
    .local v2, remaining:J
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-gez v6, :cond_25

    .line 321
    const/4 v6, 0x1

    .line 329
    .end local v2           #remaining:J
    .end local v4           #stat:Landroid/os/StatFs;
    :goto_19
    return v6

    .line 323
    :catch_1a
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 325
    const-string v6, "CreateFolderActivity"

    const-string v7, "checkLowStorage IllegalArgumentException occured..."

    invoke-static {v6, v7}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_25
    const/4 v6, 0x0

    goto :goto_19
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->view:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mUri:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mFile:Ljava/io/File;

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->view:Landroid/view/View;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private setBroadcastReceiver()V
    .registers 4

    .prologue
    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleIntentFilter:Landroid/content/IntentFilter;

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$1;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$2;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 117
    .local v0, searchManager:Landroid/app/SearchManager;
    new-instance v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$3;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 122
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mToast:Landroid/widget/Toast;

    .line 131
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    return-void

    .line 129
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method


# virtual methods
.method public clickCancel()V
    .registers 3

    .prologue
    .line 306
    const-string v0, "CreateFolderActivity"

    const-string v1, "clickCancel"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setResult(I)V

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->finish()V

    .line 309
    return-void
.end method

.method public clickOk()V
    .registers 5

    .prologue
    .line 274
    const-string v2, "CreateFolderActivity"

    const-string v3, "clickOk"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, folderName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_29

    .line 279
    const v2, 0x7f090039

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    .line 303
    :goto_28
    return-void

    .line 281
    :cond_29
    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 282
    :cond_39
    const v2, 0x7f09003f

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    goto :goto_28

    .line 284
    :cond_40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 285
    const v2, 0x7f090034

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    goto :goto_28

    .line 287
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_60

    .line 288
    const v2, 0x7f09004b

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    goto :goto_28

    .line 290
    :cond_60
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 292
    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->checkLowStorage(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 293
    const v2, 0x7f090048

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    goto :goto_28

    .line 295
    :cond_73
    const v2, 0x7f090036

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showToast(I)V

    goto :goto_28

    .line 301
    :cond_7a
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setResult(I)V

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->finish()V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "CreateFolderActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 80
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->init()V

    .line 84
    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->showDialog(I)V

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setBroadcastReceiver()V

    .line 87
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    .line 206
    :goto_7
    return-object v1

    .line 173
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mFile:Ljava/io/File;

    if-nez v2, :cond_10

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->finish()V

    goto :goto_7

    .line 178
    :cond_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_4e

    goto :goto_7

    .line 182
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 185
    const v1, 0x7f090011

    new-instance v2, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$5;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v1, 0x7f090012

    new-instance v2, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$6;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_7

    .line 180
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "CreateFolderActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    iput-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    iput-object v2, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_23

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 270
    :cond_23
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 253
    const-string v0, "CreateFolderActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 255
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 214
    packed-switch p1, :pswitch_data_1c

    .line 229
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 230
    return-void

    .line 217
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 218
    .local v0, bt:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 219
    new-instance v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$8;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 214
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 234
    const-string v0, "CreateFolderActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;-><init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method
