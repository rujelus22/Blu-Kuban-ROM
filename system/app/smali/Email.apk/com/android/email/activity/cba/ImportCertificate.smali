.class public Lcom/android/email/activity/cba/ImportCertificate;
.super Landroid/app/Activity;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;
    }
.end annotation


# static fields
.field private static toast:Landroid/widget/Toast;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mCertToImport:Ljava/io/File;

.field private mCertificateManager:Lcom/android/email/cba/CertificateMgr;

.field private mDialogResult:I

.field private mImportedCertificateName:Ljava/lang/String;

.field private mKeystorePassword:Ljava/lang/String;

.field mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 184
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/cba/ImportCertificate;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertToImport:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/email/activity/cba/ImportCertificate;)Lcom/android/email/cba/CertificateMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/cba/ImportCertificate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->reopenDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/cba/ImportCertificate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->createFileList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->getViewText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/cba/ImportCertificate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->hideError()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/cba/ImportCertificate;I)Landroid/widget/TextView;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->showError(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/cba/ImportCertificate;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/cba/ImportCertificate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->renameCertificate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->importCertificate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/cba/ImportCertificate;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    return-object v0
.end method

.method private createFileList()V
    .registers 16

    .prologue
    const/16 v14, 0xbb8

    const/4 v13, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 104
    const-string v11, "ImportCertificate"

    const-string v12, "finishing, exit createFileList()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_10
    return-void

    .line 107
    :cond_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    .line 108
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0804e0

    invoke-static {v11, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->finish()V

    goto :goto_10

    .line 145
    :cond_2f
    const/4 v11, 0x3

    new-array v1, v11, [Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v1, v13

    const/4 v11, 0x1

    const-string v12, "Download"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "external_sd"

    aput-object v12, v1, v11

    .line 146
    .local v1, directories:[Ljava/lang/String;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v9, p12Hash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_48
    if-ge v6, v8, :cond_b7

    aget-object v2, v0, v6

    .line 148
    .local v2, directory:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v10, root:Ljava/io/File;
    if-eqz v10, :cond_b4

    .line 150
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 151
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_b4

    .line 153
    const/4 v5, 0x0

    .local v5, i:I
    :goto_75
    array-length v11, v4

    if-ge v5, v11, :cond_b4

    .line 154
    aget-object v11, v4, v5

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, fileName:Ljava/lang/String;
    const-string v11, ".p12"

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8e

    const-string v11, ".pfx"

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 156
    :cond_8e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b1

    const-string v11, ""

    :goto_9f
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 156
    :cond_b1
    const-string v11, "/"

    goto :goto_9f

    .line 147
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i:I
    :cond_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 163
    .end local v2           #directory:Ljava/lang/String;
    .end local v10           #root:Ljava/io/File;
    :cond_b7
    new-array v11, v13, [Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 164
    .local v7, items:[Ljava/lang/String;
    const-string v11, "ImportCertificate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "files: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz v7, :cond_ec

    array-length v11, v7

    if-lez v11, :cond_ec

    .line 166
    iget-object v11, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v12, Landroid/widget/ArrayAdapter;

    const v13, 0x1090003

    invoke-direct {v12, p0, v13, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_10

    .line 171
    :cond_ec
    sget-object v11, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    if-nez v11, :cond_f9

    .line 172
    const v11, 0x7f0804e2

    invoke-static {p0, v11, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    sput-object v11, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    .line 178
    :cond_f9
    sget-object v11, Lcom/android/email/activity/cba/ImportCertificate;->toast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->finish()V

    goto/16 :goto_10
.end method

.method private createOnClickListener(I)Landroid/content/DialogInterface$OnClickListener;
    .registers 5
    .parameter "id"

    .prologue
    .line 262
    const v1, 0x7f0400bc

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    .line 264
    new-instance v0, Lcom/android/email/activity/cba/ImportCertificate$2;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/cba/ImportCertificate$2;-><init>(Lcom/android/email/activity/cba/ImportCertificate;I)V

    .line 304
    .local v0, onClickHandler:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method private createSingleEditLineDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createOnClickListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 383
    .local v2, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createOnDismissListener(I)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    .line 385
    .local v3, onDismiss:Landroid/content/DialogInterface$OnDismissListener;
    const-string v5, ""

    .line 386
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v7, 0x7f100292

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 388
    .local v4, text:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v7, 0x7f100293

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 389
    .local v1, dialogEditTextRename:Landroid/widget/EditText;
    packed-switch p1, :pswitch_data_80

    .line 402
    :goto_23
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 406
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    new-instance v6, Lcom/android/email/activity/cba/ImportCertificate$4;

    invoke-direct {v6, p0, p1, v4, v1}, Lcom/android/email/activity/cba/ImportCertificate$4;-><init>(Lcom/android/email/activity/cba/ImportCertificate;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 439
    return-object v0

    .line 391
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_5b
    const v6, 0x7f0804e5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    iget-object v6, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_23

    .line 396
    :pswitch_6f
    const v6, 0x7f0804e3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    new-instance v6, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v6}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_23

    .line 389
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_5b
    .end packed-switch
.end method

.method private getViewText(I)Ljava/lang/String;
    .registers 3
    .parameter "viewId"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 464
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :cond_d
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 468
    const v0, 0x7f100291

    invoke-direct {p0, v0}, Lcom/android/email/activity/cba/ImportCertificate;->hide(I)V

    .line 469
    return-void
.end method

.method private importCertificate(Ljava/lang/String;)V
    .registers 6
    .parameter "password"

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertToImport:Ljava/io/File;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/cba/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    :try_end_a
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_0 .. :try_end_a} :catch_b

    .line 494
    :goto_a
    return-void

    .line 483
    :catch_b
    move-exception v0

    .line 484
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    const-string v1, "ImportCertificate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertificateManagerException!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/emailcommon/cba/CertificateManagerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$5;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method private renameCertificate(Ljava/lang/String;)V
    .registers 5
    .parameter "certificateName"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 499
    :try_start_8
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/email/cba/CertificateMgr;->renameCertificate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_8 .. :try_end_f} :catch_10

    .line 511
    :cond_f
    :goto_f
    return-void

    .line 500
    :catch_10
    move-exception v0

    .line 501
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$6;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private reopenDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 472
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    if-ne v0, v2, :cond_a

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    .line 477
    :cond_9
    :goto_9
    return-void

    .line 474
    :cond_a
    iget v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    if-ne v0, v1, :cond_9

    .line 475
    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->showDialog(I)V

    goto :goto_9
.end method

.method private showError(I)Landroid/widget/TextView;
    .registers 5
    .parameter "msgId"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mView:Landroid/view/View;

    const v2, 0x7f100291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 453
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_14

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 455
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_14
    return-object v0
.end method

.method private stopSdCardMonitor()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->stopWatching()V

    .line 236
    :cond_9
    return-void
.end method


# virtual methods
.method public createOnDismissListener(I)Landroid/content/DialogInterface$OnDismissListener;
    .registers 3
    .parameter "id"

    .prologue
    .line 309
    new-instance v0, Lcom/android/email/activity/cba/ImportCertificate$3;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/cba/ImportCertificate$3;-><init>(Lcom/android/email/activity/cba/ImportCertificate;I)V

    .line 377
    .local v0, onDismissHandler:Landroid/content/DialogInterface$OnDismissListener;
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 443
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 444
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v3, 0x7f04006d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/ImportCertificate;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1b

    .line 71
    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    .line 73
    :cond_1b
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2f

    .line 74
    :cond_27
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "keystore password can not be null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_2f
    :try_start_2f
    new-instance v3, Lcom/android/email/cba/CertificateMgr;

    iget-object v4, p0, Lcom/android/email/activity/cba/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    :try_end_3c
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_2f .. :try_end_3c} :catch_61

    .line 83
    :goto_3c
    const v3, 0x7f10014b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/ImportCertificate;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    .line 84
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->createFileList()V

    .line 86
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/email/activity/cba/ImportCertificate$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/cba/ImportCertificate$1;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    new-instance v3, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V

    iput-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    .line 99
    iget-object v3, p0, Lcom/android/email/activity/cba/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->startWatching()V

    .line 100
    return-void

    .line 78
    :catch_61
    move-exception v0

    .line 79
    .local v0, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804e9

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 240
    packed-switch p1, :pswitch_data_2c

    .line 256
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 242
    :pswitch_6
    iput v2, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 243
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createSingleEditLineDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_5

    .line 245
    :pswitch_d
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I

    .line 246
    invoke-direct {p0, p1}, Lcom/android/email/activity/cba/ImportCertificate;->createSingleEditLineDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_5

    .line 249
    :pswitch_15
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804e7

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    .line 240
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    invoke-direct {p0}, Lcom/android/email/activity/cba/ImportCertificate;->stopSdCardMonitor()V

    .line 231
    return-void
.end method
