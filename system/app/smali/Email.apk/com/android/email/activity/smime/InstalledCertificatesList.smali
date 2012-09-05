.class public Lcom/android/email/activity/smime/InstalledCertificatesList;
.super Landroid/app/Fragment;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;,
        Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;
    }
.end annotation


# instance fields
.field private mActiveCertificate:Ljava/lang/String;

.field private mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

.field private mCertificatesList:Landroid/widget/ListView;

.field private mDeleteItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;",
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

.field private pa:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 66
    iput-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 500
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/smime/InstalledCertificatesList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/smime/InstalledCertificatesList;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private fillCertificateList()V
    .registers 11

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, counter:I
    :try_start_1
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v6}, Lcom/android/emailcommon/smime/CertificateMgr;->getAliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 112
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_c
    :goto_c
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 115
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, alias:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    .line 117
    .local v5, key:Ljava/security/Key;
    if-eqz v5, :cond_c

    .line 118
    new-instance v6, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 122
    .end local v0           #alias:Ljava/lang/String;
    .end local v5           #key:Ljava/security/Key;
    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_64

    .line 123
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 124
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_4c
    iget-object v7, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-direct {v8, p0, v9, v6}, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_63
    return-void

    .line 128
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_64
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 129
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_7f
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_1 .. :try_end_7f} :catch_80

    goto :goto_4c

    .line 136
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_80
    move-exception v3

    .line 137
    .local v3, e:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {v3}, Lcom/android/emailcommon/smime/CertificateManagerException;->printStackTrace()V

    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0804eb

    const/16 v8, 0xbb8

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_63
.end method


# virtual methods
.method deleteCertificates()V
    .registers 5

    .prologue
    .line 305
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/email/activity/smime/InstalledCertificatesList;->showDialog(I)Landroid/app/Dialog;

    .line 306
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$1;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 339
    :goto_11
    return-void

    .line 335
    :catch_12
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0804ee

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_11
.end method

.method public importCertificate()V
    .registers 8

    .prologue
    .line 342
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 343
    const-string v0, "KEYSTORE_PASSWORD"

    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 345
    const-class v1, Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804dc

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 348
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 352
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 354
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 356
    :try_start_6
    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v1}, Lcom/android/emailcommon/smime/CertificateMgr;->refresh()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_f

    .line 361
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 363
    :cond_e
    return-void

    .line 357
    :catch_f
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate Certificate Manager "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    if-nez v0, :cond_e

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    .line 76
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->setHasOptionsMenu(Z)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 147
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 84
    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;

    .line 86
    const v2, 0x7f1000ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    .line 87
    const v2, 0x7f1000ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f1000ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateText:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f1000f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->notificationOfinstallFromRoot:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificatesList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEYSTORE_PASSWORD"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CERTIFICATE_ALIAS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mActiveCertificate:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EMAIL_ADDRESS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;

    .line 98
    :try_start_69
    new-instance v2, Lcom/android/emailcommon/smime/CertificateMgr;

    iget-object v3, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_76} :catch_7a

    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 105
    return-object v1

    .line 99
    :catch_7a
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to instantiate Certificate Manager "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    .line 299
    :goto_9
    return v2

    .line 272
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->importCertificate()V

    goto :goto_9

    .line 275
    :sswitch_e
    iput-boolean v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 276
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_9

    .line 280
    :sswitch_1b
    iput-boolean v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 281
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 282
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->deleteCertificates()V

    .line 290
    :goto_28
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_9

    .line 287
    :cond_30
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    goto :goto_28

    .line 293
    :sswitch_34
    iput-boolean v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 295
    invoke-direct {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V

    .line 296
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_9

    .line 270
    :sswitch_data_46
    .sparse-switch
        0x7f10001e -> :sswitch_1b
        0x7f100023 -> :sswitch_34
        0x7f1002db -> :sswitch_a
        0x7f1002dc -> :sswitch_e
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 14
    .parameter "menu"

    .prologue
    const/4 v11, 0x5

    const v10, 0x7f10001e

    const v9, 0x7f1002dc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 204
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 207
    .local v3, mOrientation:I
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 208
    .local v1, doneItem:Landroid/view/MenuItem;
    const v5, 0x7f100023

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 209
    .local v0, cancelItem:Landroid/view/MenuItem;
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 210
    .local v4, size:I
    iget-boolean v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z

    if-ne v5, v7, :cond_76

    .line 211
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    if-ge v2, v4, :cond_a2

    .line 212
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

    .line 214
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 216
    :cond_4d
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v10, :cond_4a

    .line 218
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_6e

    .line 219
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4a

    .line 221
    :cond_6e
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4a

    .line 227
    .end local v2           #i:I
    :cond_76
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_77
    if-ge v2, v4, :cond_a2

    .line 228
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

    .line 230
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 232
    :cond_9a
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_97

    .line 236
    :cond_a2
    if-ne v3, v7, :cond_d2

    .line 237
    if-eqz v1, :cond_ae

    .line 238
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 239
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 242
    :cond_ae
    if-eqz v0, :cond_b8

    .line 243
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 244
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 260
    :cond_b8
    :goto_b8
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList;->noCertificateImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e9

    .line 261
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 262
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020229

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    :goto_d1
    return-void

    .line 248
    :cond_d2
    if-eqz v1, :cond_dd

    .line 249
    const v5, 0x7f02022c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 253
    :cond_dd
    if-eqz v0, :cond_b8

    .line 254
    const v5, 0x7f02021f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 255
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_b8

    .line 264
    :cond_e9
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_d1
.end method

.method protected showDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 366
    packed-switch p1, :pswitch_data_22

    .line 374
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 368
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804ef

    invoke-virtual {p0, v1}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_4

    .line 366
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
