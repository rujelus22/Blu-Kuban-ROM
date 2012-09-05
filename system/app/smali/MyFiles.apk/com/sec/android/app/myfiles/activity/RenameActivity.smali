.class public Lcom/sec/android/app/myfiles/activity/RenameActivity;
.super Landroid/app/Activity;
.source "RenameActivity.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mEditText:Landroid/widget/EditText;

.field private mFile:Ljava/io/File;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    .line 69
    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/activity/RenameActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/myfiles/activity/RenameActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/activity/RenameActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private getFileName(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .parameter "file"

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 383
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 384
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 387
    .end local v0           #index:I
    :cond_18
    return-object v1
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->view:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mUri:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->view:Landroid/view/View;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/myfiles/activity/RenameActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$3;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method private rename(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 303
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    const/4 v0, 0x1

    .line 308
    :goto_7
    return v0

    .line 307
    :cond_8
    const v0, 0x7f090035

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    .line 308
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setBroadcastReceiver()V
    .registers 4

    .prologue
    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/sec/android/app/myfiles/activity/RenameActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$1;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 107
    .local v0, searchManager:Landroid/app/SearchManager;
    new-instance v1, Lcom/sec/android/app/myfiles/activity/RenameActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$2;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 112
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mToast:Landroid/widget/Toast;

    .line 121
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void

    .line 119
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method private update(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 281
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/sec/android/app/myfiles/FileUtils;->updateMediaDB(Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/FileUtils;->removeItemFromMediaList(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 288
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "where"

    const-string v2, "myfiles"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    :cond_57
    :goto_57
    return-void

    .line 296
    :cond_58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "where"

    const-string v2, "myfiles"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_57
.end method


# virtual methods
.method public clickCancel()V
    .registers 3

    .prologue
    .line 374
    const-string v0, "RenameActivity"

    const-string v1, "clickCancel"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->setResult(I)V

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    .line 377
    return-void
.end method

.method public clickRename()V
    .registers 10

    .prologue
    const v8, 0x7f090034

    const/4 v7, -0x1

    .line 313
    const-string v5, "RenameActivity"

    const-string v6, "clickRename"

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, srcName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, dstName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2c

    .line 318
    const v5, 0x7f090039

    invoke-direct {p0, v5}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    .line 371
    :cond_2b
    :goto_2b
    return-void

    .line 323
    :cond_2c
    const-string v5, "."

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, ".."

    invoke-virtual {v5, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 324
    :cond_3c
    const v5, 0x7f09003f

    invoke-direct {p0, v5}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    goto :goto_2b

    .line 329
    :cond_43
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 330
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 331
    .local v2, index:I
    if-eq v2, v7, :cond_6c

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .end local v2           #index:I
    :cond_6c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 336
    invoke-direct {p0, v8}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    goto :goto_2b

    .line 340
    :cond_76
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xfa

    if-le v5, v6, :cond_ab

    .line 343
    const v5, 0x7f09004b

    invoke-direct {p0, v5}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    goto :goto_2b

    .line 347
    :cond_ab
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 349
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 350
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v4, tempFile:Ljava/io/File;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 352
    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 353
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->update(Ljava/io/File;Ljava/io/File;)V

    .line 355
    invoke-virtual {p0, v7}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->setResult(I)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    goto/16 :goto_2b

    .line 360
    .end local v4           #tempFile:Ljava/io/File;
    :cond_f0
    invoke-direct {p0, v8}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showToast(I)V

    goto/16 :goto_2b

    .line 364
    :cond_f5
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 365
    iget-object v5, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->update(Ljava/io/File;Ljava/io/File;)V

    .line 367
    invoke-virtual {p0, v7}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->setResult(I)V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    goto/16 :goto_2b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "RenameActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->init()V

    .line 87
    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->showDialog(I)V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->setBroadcastReceiver()V

    .line 90
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    .line 198
    :goto_7
    return-object v1

    .line 164
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    if-nez v2, :cond_10

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    goto :goto_7

    .line 169
    :cond_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_4e

    goto :goto_7

    .line 173
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 176
    const v1, 0x7f090011

    new-instance v2, Lcom/sec/android/app/myfiles/activity/RenameActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$4;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    const v1, 0x7f090012

    new-instance v2, Lcom/sec/android/app/myfiles/activity/RenameActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$5;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/android/app/myfiles/activity/RenameActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$6;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_7

    .line 171
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 257
    const-string v0, "RenameActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 267
    :cond_1c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 252
    const-string v0, "RenameActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_1c

    .line 221
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 222
    return-void

    .line 209
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 210
    .local v0, bt:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 211
    new-instance v1, Lcom/sec/android/app/myfiles/activity/RenameActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$7;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 206
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 226
    const-string v0, "RenameActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    if-eqz v0, :cond_19

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->finish()V

    .line 237
    :cond_19
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/RenameActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/RenameActivity$8;-><init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method
