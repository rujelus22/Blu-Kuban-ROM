.class public Lcom/android/certinstaller/CertInstaller;
.super Landroid/app/Activity;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;,
        Lcom/android/certinstaller/CertInstaller$InstallOthersAction;,
        Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;,
        Lcom/android/certinstaller/CertInstaller$MyAction;,
        Lcom/android/certinstaller/CertInstaller$MyMap;,
        Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;
    }
.end annotation


# instance fields
.field private mCredentials:Lcom/android/certinstaller/CredentialHelper;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

.field private mState:I

.field private final mView:Lcom/android/certinstaller/ViewHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 67
    new-instance v0, Lcom/android/certinstaller/ViewHelper;

    invoke-direct {v0}, Lcom/android/certinstaller/ViewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    .line 476
    return-void
.end method

.method static synthetic access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/certinstaller/CertInstaller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/certinstaller/CertInstaller;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    return-object v0
.end method

.method private createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;
    .registers 5
    .parameter "intent"

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1, p1}, Lcom/android/certinstaller/CredentialHelper;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-object v1

    .line 76
    :catch_6
    move-exception v0

    .line 77
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "CertInstaller"

    const-string v2, "createCredentialHelper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const v1, 0x7f060018

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 79
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1}, Lcom/android/certinstaller/CredentialHelper;-><init>()V

    goto :goto_5
.end method

.method private createNameCredentialDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 367
    const/high16 v3, 0x7f02

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 368
    .local v2, view:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 369
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f080002

    iget-object v5, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v5, p0}, Lcom/android/certinstaller/CredentialHelper;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/ViewHelper;->getError()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 371
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f060012

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 372
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->setError(Z)V

    .line 374
    :cond_36
    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 375
    .local v1, nameInput:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 377
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$6;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$6;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/certinstaller/CertInstaller$5;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$5;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 410
    .local v0, d:Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$7;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$7;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 415
    return-object v0
.end method

.method private createPkcs12PasswordDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 321
    const v3, 0x7f020001

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 323
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/ViewHelper;->getError()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 324
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 325
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v5}, Lcom/android/certinstaller/ViewHelper;->setError(Z)V

    .line 328
    :cond_23
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    :goto_36
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$3;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$3;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/certinstaller/CertInstaller$2;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$2;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 357
    .local v0, d:Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$4;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$4;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 363
    return-object v0

    .line 329
    .end local v0           #d:Landroid/app/Dialog;
    :cond_67
    const v3, 0x7f060004

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36
.end method

.method private getDefaultName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 421
    const/4 v2, 0x0

    .line 426
    :goto_d
    return-object v2

    .line 424
    :cond_e
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, index:I
    if-lez v0, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    move-object v2, v1

    .line 426
    goto :goto_d
.end method

.method private getPkeyMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v3, "PKEY_MAP"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    .local v0, bytes:[B
    if-eqz v0, :cond_13

    .line 280
    invoke-static {v0}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 282
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_13

    .line 284
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lcom/android/certinstaller/CertInstaller$MyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/certinstaller/CertInstaller$MyMap;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    goto :goto_12
.end method

.method private nameCredential()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasAnyForSystemInstall()Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    const v0, 0x7f060017

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 253
    :goto_e
    return-void

    .line 251
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_e
.end method

.method private needsKeyStoreAccess()Z
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiAsCertificate()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiUserCertificate()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_20
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private saveKeyPair()V
    .registers 7

    .prologue
    .line 256
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "PKEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 257
    .local v2, privatekey:[B
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "KEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v1

    .line 259
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 261
    const-string v3, "CertInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save privatekey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> #keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private savePkeyMap(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 266
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 267
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to delete pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_17
    :goto_17
    return-void

    .line 271
    :cond_18
    invoke-static {p1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 272
    .local v0, bytes:[B
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_17

    .line 273
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to write pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private sendUnlockKeyStoreIntent()V
    .registers 2

    .prologue
    .line 244
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method private toastErrorAndFinish(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 433
    return-void
.end method


# virtual methods
.method extractPkcs12InBackground(Ljava/lang/String;)V
    .registers 4
    .parameter "password"

    .prologue
    .line 289
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    .line 291
    new-instance v0, Lcom/android/certinstaller/CertInstaller$1;

    invoke-direct {v0, p0, p1}, Lcom/android/certinstaller/CertInstaller$1;-><init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstaller$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    return-void
.end method

.method installOthers()V
    .registers 8

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 220
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->saveKeyPair()V

    .line 221
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 241
    :goto_e
    return-void

    .line 223
    :cond_f
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->getUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 224
    .local v0, cert:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_52

    .line 226
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v2

    .line 228
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 229
    .local v3, privatekey:[B
    if-eqz v3, :cond_56

    .line 230
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matched key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 234
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4, v3}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 239
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v3           #privatekey:[B
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    goto :goto_e

    .line 236
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v3       #privatekey:[B
    :cond_56
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didn\'t find matched private key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 172
    if-ne p1, v3, :cond_77

    .line 173
    if-ne p2, v4, :cond_58

    .line 174
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v0, 0x7f060019

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasCaCerts()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 180
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;-><init>(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$1;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    :goto_50
    return-void

    .line 183
    :cond_51
    invoke-virtual {p0, v4}, Lcom/android/certinstaller/CertInstaller;->setResult(I)V

    .line 191
    :goto_54
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    goto :goto_50

    .line 185
    :cond_58
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential not saved, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const v0, 0x7f060016

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    goto :goto_54

    .line 189
    :cond_77
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedStates"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    .line 89
    if-nez p1, :cond_2a

    move v1, v2

    :goto_12
    iput v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 91
    iget v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    if-ne v1, v2, :cond_4e

    .line 92
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->containsAnyRawData()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 93
    const v1, 0x7f060017

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 111
    :goto_29
    return-void

    :cond_2a
    move v1, v3

    .line 89
    goto :goto_12

    .line 95
    :cond_2c
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->hasPkcs12KeyStore()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_29

    .line 98
    :cond_38
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    .line 99
    .local v0, action:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->needsKeyStoreAccess()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 100
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->sendUnlockKeyStoreIntent()V

    .line 101
    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_29

    .line 103
    :cond_4a
    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_29

    .line 107
    .end local v0           #action:Lcom/android/certinstaller/CertInstaller$MyAction;
    :cond_4e
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1, p1}, Lcom/android/certinstaller/CredentialHelper;->onRestoreStates(Landroid/os/Bundle;)V

    .line 108
    const-string v1, "na"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/certinstaller/CertInstaller$MyAction;

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_29
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "dialogId"

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_28

    .line 166
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 153
    :pswitch_5
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 156
    :pswitch_a
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 159
    :pswitch_f
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_4

    .line 151
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method onExtractionDone(Z)V
    .registers 6
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 309
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 310
    if-eqz p1, :cond_11

    .line 311
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    .line 318
    :goto_10
    return-void

    .line 314
    :cond_11
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f080003

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 316
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_10
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 138
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 124
    :cond_b
    :goto_b
    return-void

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outStates"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0, p1}, Lcom/android/certinstaller/CredentialHelper;->onSaveStates(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_13

    .line 145
    const-string v0, "na"

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 147
    :cond_13
    return-void
.end method
