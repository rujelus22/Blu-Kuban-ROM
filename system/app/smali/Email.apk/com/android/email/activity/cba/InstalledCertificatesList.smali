.class public Lcom/android/email/activity/cba/InstalledCertificatesList;
.super Landroid/app/Activity;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;,
        Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;
    }
.end annotation


# instance fields
.field private mActiveCertificate:Ljava/lang/String;

.field private mCertificateManager:Lcom/android/email/cba/CertificateMgr;

.field private mCertificatesList:Landroid/widget/ListView;

.field private mDeleteItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteMode:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private noCertificateImg:Landroid/widget/ImageView;

.field private noCertificateText:Landroid/widget/TextView;

.field private notificationOfinstallFromRoot:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 49
    iput-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 541
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/cba/InstalledCertificatesList;)Lcom/android/email/cba/CertificateMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/cba/InstalledCertificatesList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/cba/InstalledCertificatesList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method private fillCertificateList()V
    .registers 10

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, counter:I
    :try_start_1
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v6}, Lcom/android/email/cba/CertificateMgr;->getAliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 90
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_c
    :goto_c
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, alias:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v6, v0}, Lcom/android/email/cba/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    .line 96
    .local v5, key:Ljava/security/Key;
    if-eqz v5, :cond_c

    .line 97
    new-instance v6, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 102
    .end local v0           #alias:Ljava/lang/String;
    .end local v5           #key:Ljava/security/Key;
    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_60

    .line 103
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_4c
    iget-object v7, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v8, p0, p0, v6}, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_5f
    return-void

    .line 108
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_60
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 109
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v6, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_7b
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_1 .. :try_end_7b} :catch_7c

    goto :goto_4c

    .line 116
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_7c
    move-exception v3

    .line 117
    .local v3, e:Lcom/android/emailcommon/cba/CertificateManagerException;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0804eb

    const/16 v8, 0xbb8

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_5f
.end method


# virtual methods
.method deleteCertificates()V
    .registers 8

    .prologue
    const/16 v6, 0xbb8

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, isAliasActiveCertificate:Z
    :try_start_3
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 312
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 313
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v3}, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->getAlias()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 314
    const/4 v1, 0x1

    .line 319
    :cond_22
    if-nez v1, :cond_36

    .line 321
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->showDialog(I)V

    .line 323
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/activity/cba/InstalledCertificatesList$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$1;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 399
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_35
    return-void

    .line 376
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_36
    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 378
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804ed

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_4f

    goto :goto_35

    .line 390
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_4f
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804ee

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_35
.end method

.method public importCertificate()V
    .registers 4

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v1, "KEYSTORE_PASSWORD"

    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 405
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    const/4 v1, -0x1

    if-ne p2, v1, :cond_11

    .line 414
    :try_start_6
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v1}, Lcom/android/email/cba/CertificateMgr;->refresh()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_12

    .line 419
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 420
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    .line 422
    :cond_11
    return-void

    .line 415
    :catch_12
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate Certificate Manager "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->closeOptionsMenu()V

    .line 569
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->openOptionsMenu()V

    .line 570
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f04005b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    const v2, 0x7f1000ec

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    .line 66
    const v2, 0x7f1000ee

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f1000ef

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f1000f0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    if-nez v2, :cond_50

    .line 72
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 75
    :cond_50
    const-string v2, "KEYSTORE_PASSWORD"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    .line 76
    const-string v2, "CERTIFICATE_ALIAS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    .line 77
    const-string v2, "EMAIL_ADDRESS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    .line 79
    :try_start_68
    new-instance v2, Lcom/android/email/cba/CertificateMgr;

    iget-object v3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_79

    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 84
    return-void

    .line 80
    :catch_79
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to instantiate Certificate Manager "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_1e

    .line 434
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 428
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 429
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804ef

    invoke-virtual {p0, v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_4

    .line 426
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 185
    :try_start_3
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    .line 189
    :goto_d
    const/4 v0, 0x1

    return v0

    .line 187
    :catch_f
    move-exception v0

    goto :goto_d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 301
    :goto_d
    return v0

    .line 264
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->importCertificate()V

    goto :goto_d

    .line 267
    :sswitch_12
    iput-boolean v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 269
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_d

    .line 272
    :sswitch_1b
    iput-boolean v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 273
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 274
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->deleteCertificates()V

    .line 282
    :goto_28
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_d

    .line 279
    :cond_2c
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    goto :goto_28

    .line 285
    :sswitch_30
    iput-boolean v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    .line 286
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 287
    invoke-direct {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V

    .line 288
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    goto :goto_d

    .line 294
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V

    goto :goto_d

    .line 262
    :sswitch_data_42
    .sparse-switch
        0x102002c -> :sswitch_3e
        0x7f10001e -> :sswitch_1b
        0x7f100023 -> :sswitch_30
        0x7f1002db -> :sswitch_e
        0x7f1002dc -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 14
    .parameter "menu"

    .prologue
    const/4 v11, 0x5

    const v10, 0x7f10001e

    const v9, 0x7f1002dc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 196
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 197
    .local v4, size:I
    invoke-virtual {p0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 198
    .local v3, mOrientation:I
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 199
    .local v1, doneItem:Landroid/view/MenuItem;
    const v5, 0x7f100023

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 201
    .local v0, cancelItem:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z

    if-ne v5, v7, :cond_76

    .line 202
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    if-ge v2, v4, :cond_a2

    .line 203
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-eq v5, v10, :cond_4d

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f100023

    if-eq v5, v6, :cond_4d

    .line 205
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 202
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 207
    :cond_4d
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v10, :cond_4a

    .line 209
    iget-object v5, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_6e

    .line 210
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4a

    .line 212
    :cond_6e
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4a

    .line 218
    .end local v2           #i:I
    :cond_76
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_77
    if-ge v2, v4, :cond_a2

    .line 219
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f1002db

    if-eq v5, v6, :cond_9a

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-eq v5, v9, :cond_9a

    .line 221
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 223
    :cond_9a
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_97

    .line 227
    :cond_a2
    if-ne v3, v7, :cond_d6

    .line 228
    if-eqz v1, :cond_ae

    .line 229
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 230
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 233
    :cond_ae
    if-eqz v0, :cond_b8

    .line 234
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 235
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    :cond_b8
    :goto_b8
    iget-object v5, p0, Lcom/android/email/activity/cba/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_ed

    .line 252
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 253
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020229

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 257
    :goto_d1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    .line 239
    :cond_d6
    if-eqz v1, :cond_e1

    .line 240
    const v5, 0x7f02022c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 244
    :cond_e1
    if-eqz v0, :cond_b8

    .line 245
    const v5, 0x7f02021f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 246
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_b8

    .line 255
    :cond_ed
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_d1
.end method
