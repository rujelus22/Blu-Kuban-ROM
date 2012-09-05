.class public Lcom/samsung/client/DeviceManagement;
.super Landroid/preference/PreferenceActivity;
.source "DeviceManagement.java"


# static fields
.field public static mDlg:Landroid/app/ProgressDialog;

.field public static root:Landroid/preference/PreferenceScreen;


# instance fields
.field private mApp:Lcom/samsung/client/DMApp;

.field public sec10:Landroid/os/CountDownTimer;

.field public svcConnectedTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    .line 24
    sput-object v0, Lcom/samsung/client/DeviceManagement;->mDlg:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    .line 43
    new-instance v0, Lcom/samsung/client/DeviceManagement$1;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DeviceManagement$1;-><init>(Lcom/samsung/client/DeviceManagement;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DeviceManagement;->svcConnectedTimer:Landroid/os/CountDownTimer;

    .line 274
    new-instance v0, Lcom/samsung/client/DeviceManagement$6;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DeviceManagement$6;-><init>(Lcom/samsung/client/DeviceManagement;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DeviceManagement;->sec10:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/client/DeviceManagement;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/client/DeviceManagement;->checksessionactive()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/client/DeviceManagement;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/client/DeviceManagement;->showCallError()V

    return-void
.end method

.method private checksessionactive()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v4, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v4

    if-nez v4, :cond_45

    move v1, v2

    .line 115
    .local v1, isSessionActive:Z
    :goto_b
    const-string v4, "DeviceManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksessionactive...isSessionActive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v1, :cond_44

    .line 119
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f050006

    invoke-virtual {p0, v4}, Lcom/samsung/client/DeviceManagement;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 123
    sput-object v0, Lcom/samsung/client/DeviceManagement;->mDlg:Landroid/app/ProgressDialog;

    .line 124
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 125
    iget-object v2, p0, Lcom/samsung/client/DeviceManagement;->sec10:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 127
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_44
    return-void

    .end local v1           #isSessionActive:Z
    :cond_45
    move v1, v3

    .line 113
    goto :goto_b
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/client/DeviceManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/client/DeviceManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v3, "dm_menu_start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 140
    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 141
    new-instance v2, Lcom/samsung/client/DeviceManagement$2;

    invoke-direct {v2, p0}, Lcom/samsung/client/DeviceManagement$2;-><init>(Lcom/samsung/client/DeviceManagement;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    invoke-virtual {p0}, Lcom/samsung/client/DeviceManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 180
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v3, "dm_menu_start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 184
    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 185
    new-instance v2, Lcom/samsung/client/DeviceManagement$3;

    invoke-direct {v2, p0}, Lcom/samsung/client/DeviceManagement$3;-><init>(Lcom/samsung/client/DeviceManagement;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/samsung/client/DeviceManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 221
    const v2, 0x7f050073

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 222
    new-instance v2, Lcom/samsung/client/DeviceManagement$4;

    invoke-direct {v2, p0}, Lcom/samsung/client/DeviceManagement$4;-><init>(Lcom/samsung/client/DeviceManagement;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-virtual {p0}, Lcom/samsung/client/DeviceManagement;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v3, "dm_menu_start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 249
    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 250
    new-instance v2, Lcom/samsung/client/DeviceManagement$5;

    invoke-direct {v2, p0}, Lcom/samsung/client/DeviceManagement$5;-><init>(Lcom/samsung/client/DeviceManagement;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    return-object v0
.end method

.method private showCallError()V
    .registers 4

    .prologue
    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/samsung/client/DeviceManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050016

    new-instance v2, Lcom/samsung/client/DeviceManagement$7;

    invoke-direct {v2, p0}, Lcom/samsung/client/DeviceManagement$7;-><init>(Lcom/samsung/client/DeviceManagement;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 303
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v1, "DeviceManagement"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    .line 32
    invoke-direct {p0}, Lcom/samsung/client/DeviceManagement;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sput-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    .line 33
    sget-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DeviceManagement;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 34
    sget-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 36
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 37
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement;->svcConnectedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 41
    :goto_2e
    return-void

    .line 39
    :cond_2f
    sget-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    sget-boolean v2, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-nez v2, :cond_36

    const/4 v0, 0x1

    :cond_36
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2e
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 106
    const-string v0, "DeviceManagement"

    const-string v1, "onResume... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    invoke-direct {p0}, Lcom/samsung/client/DeviceManagement;->checksessionactive()V

    .line 110
    :cond_15
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 307
    const-string v0, "DeviceManagement"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/samsung/client/DeviceManagement;->mDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 309
    sget-object v0, Lcom/samsung/client/DeviceManagement;->mDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 311
    :cond_13
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement;->svcConnectedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 312
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement;->sec10:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 313
    return-void
.end method
