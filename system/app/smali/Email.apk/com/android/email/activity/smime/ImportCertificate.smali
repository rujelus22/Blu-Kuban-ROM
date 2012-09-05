.class public Lcom/android/email/activity/smime/ImportCertificate;
.super Landroid/app/Fragment;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;,
        Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;
    }
.end annotation


# static fields
.field private static toast:Landroid/widget/Toast;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private listView:Landroid/widget/ListView;

.field private mCertToImport:Ljava/io/File;

.field private mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

.field private mDialogResult:I

.field private final mHandler:Landroid/os/Handler;

.field private mImportedCertificateName:Ljava/lang/String;

.field private mKeystorePassword:Ljava/lang/String;

.field mSdCardMonitor:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

.field private pa:Landroid/preference/PreferenceActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/smime/ImportCertificate;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    .line 239
    new-instance v0, Lcom/android/email/activity/smime/ImportCertificate$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/smime/ImportCertificate$2;-><init>(Lcom/android/email/activity/smime/ImportCertificate;)V

    iput-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mHandler:Landroid/os/Handler;

    .line 325
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/smime/ImportCertificate;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertToImport:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/smime/ImportCertificate;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/smime/ImportCertificate;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate;->renameCertificate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/smime/ImportCertificate;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/email/activity/smime/ImportCertificate;->importCertificate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/smime/ImportCertificate;)Lcom/android/emailcommon/smime/CertificateMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/smime/ImportCertificate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate;->reopenDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/smime/ImportCertificate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate;->createFileList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/smime/ImportCertificate;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/smime/ImportCertificate;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/smime/ImportCertificate;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/smime/ImportCertificate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    return p1
.end method

.method private createFileList()V
    .registers 16

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0804e0

    const/16 v13, 0xbb8

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 140
    iget-object v11, p0, Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v12, v13}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 183
    :goto_23
    return-void

    .line 144
    :cond_24
    const/4 v11, 0x3

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "Download"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "external_sd"

    aput-object v12, v1, v11

    .line 145
    .local v1, directories:[Ljava/lang/String;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v9, p12Hash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3e
    if-ge v6, v8, :cond_ad

    aget-object v2, v0, v6

    .line 147
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

    .line 148
    .local v10, root:Ljava/io/File;
    if-eqz v10, :cond_aa

    .line 149
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 150
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_aa

    .line 152
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6b
    array-length v11, v4

    if-ge v5, v11, :cond_aa

    .line 153
    aget-object v11, v4, v5

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, fileName:Ljava/lang/String;
    const-string v11, ".p12"

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_84

    const-string v11, ".pfx"

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 155
    :cond_84
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a7

    const-string v11, ""

    :goto_95
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 155
    :cond_a7
    const-string v11, "/"

    goto :goto_95

    .line 146
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i:I
    :cond_aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 164
    .end local v2           #directory:Ljava/lang/String;
    .end local v10           #root:Ljava/io/File;
    :cond_ad
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 166
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

    .line 167
    if-eqz v7, :cond_e7

    array-length v11, v7

    if-lez v11, :cond_e7

    .line 168
    iget-object v11, p0, Lcom/android/email/activity/smime/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x1090003

    invoke-direct {v12, v13, v14, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_23

    .line 172
    :cond_e7
    sget-object v11, Lcom/android/email/activity/smime/ImportCertificate;->toast:Landroid/widget/Toast;

    if-nez v11, :cond_fa

    .line 173
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0804e2

    const/16 v13, 0xbb8

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    sput-object v11, Lcom/android/email/activity/smime/ImportCertificate;->toast:Landroid/widget/Toast;

    .line 179
    :cond_fa
    sget-object v11, Lcom/android/email/activity/smime/ImportCertificate;->toast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 181
    iget-object v11, p0, Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v12, v13}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto/16 :goto_23
.end method

.method private importCertificate(Ljava/lang/String;)Z
    .registers 5
    .parameter "password"

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertToImport:Ljava/io/File;

    invoke-virtual {v1, v2, p1}, Lcom/android/emailcommon/smime/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    :try_end_a
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_0 .. :try_end_a} :catch_c

    .line 305
    const/4 v1, 0x1

    :goto_b
    return v1

    .line 290
    :catch_c
    move-exception v0

    .line 291
    .local v0, e:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/smime/ImportCertificate$3;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/smime/ImportCertificate$3;-><init>(Lcom/android/email/activity/smime/ImportCertificate;Lcom/android/emailcommon/smime/CertificateManagerException;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v0}, Lcom/android/emailcommon/smime/CertificateManagerException;->printStackTrace()V

    .line 303
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private renameCertificate(Ljava/lang/String;)V
    .registers 5
    .parameter "certificateName"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 311
    :try_start_8
    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/emailcommon/smime/CertificateMgr;->renameCertificate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_8 .. :try_end_f} :catch_10

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 312
    :catch_10
    move-exception v0

    .line 313
    .local v0, e:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/smime/ImportCertificate$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/smime/ImportCertificate$4;-><init>(Lcom/android/email/activity/smime/ImportCertificate;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private reopenDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 271
    iget v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    if-ne v1, v3, :cond_10

    .line 273
    const/4 v1, 0x2

    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/email/activity/smime/ImportCertificate;->showDialog(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 284
    :cond_a
    :goto_a
    return-void

    .line 274
    :catch_b
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :cond_10
    iget v1, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    if-ne v1, v2, :cond_a

    .line 279
    const/4 v1, 0x1

    :try_start_15
    invoke-direct {p0, v1}, Lcom/android/email/activity/smime/ImportCertificate;->showDialog(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_a

    .line 280
    :catch_19
    move-exception v0

    .line 281
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private showDialog(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->newInstance(I)Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    move-result-object v0

    .line 132
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private stopSdCardMonitor()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->stopWatching()V

    .line 237
    :cond_9
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 267
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/smime/ImportCertificate;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 89
    const v3, 0x7f04006d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    iput-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_21

    .line 93
    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    .line 95
    :cond_21
    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_35

    .line 96
    :cond_2d
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "keystore password can not be null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_35
    :try_start_35
    new-instance v3, Lcom/android/emailcommon/smime/CertificateMgr;

    iget-object v4, p0, Lcom/android/email/activity/smime/ImportCertificate;->mKeystorePassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    :try_end_42
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_35 .. :try_end_42} :catch_67

    .line 105
    :goto_42
    const v3, 0x7f10014b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->listView:Landroid/widget/ListView;

    .line 106
    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate;->createFileList()V

    .line 108
    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/email/activity/smime/ImportCertificate$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/smime/ImportCertificate$1;-><init>(Lcom/android/email/activity/smime/ImportCertificate;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    new-instance v3, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;-><init>(Lcom/android/email/activity/smime/ImportCertificate;)V

    iput-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    .line 121
    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate;->mSdCardMonitor:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    invoke-virtual {v3}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->startWatching()V

    .line 122
    return-object v2

    .line 100
    :catch_67
    move-exception v0

    .line 101
    .local v0, e:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0804e9

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_42
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/smime/ImportCertificate;->stopSdCardMonitor()V

    .line 232
    return-void
.end method
