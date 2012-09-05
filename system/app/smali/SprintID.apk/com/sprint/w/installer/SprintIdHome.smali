.class public Lcom/sprint/w/installer/SprintIdHome;
.super Landroid/app/Activity;
.source "SprintIdHome.java"


# static fields
.field private static final ERROR_DIALOG:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private log:Lcom/sprint/id/logger/Logger;

.field mBRListener:Landroid/content/BroadcastReceiver;

.field final mChangeListener:Lcom/sprint/w/installer/DownloadService$ChangeListener;

.field mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field mHandler:Landroid/os/Handler;

.field private mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field restorePosition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-class v0, Lcom/sprint/w/installer/SprintIdHome;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    .line 33
    iput-object p0, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/sprint/w/installer/SprintIdHome$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/SprintIdHome$4;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mChangeListener:Lcom/sprint/w/installer/DownloadService$ChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sprint/w/installer/SprintIdHome;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sprint/w/installer/SprintIdHome;->checkFirstLaunch()V

    return-void
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/SprintIdHome;)Lcom/sprint/w/installer/PackSwitcherLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkFirstLaunch()V
    .registers 4

    .prologue
    .line 249
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isFirstLaunch()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 251
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    const-class v2, Lcom/sprint/w/installer/SprintIdInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V

    .line 254
    .end local v0           #i:Landroid/content/Intent;
    :cond_12
    return-void
.end method

.method private init()V
    .registers 7

    .prologue
    .line 83
    const v3, 0x7f030024

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/SprintIdHome;->setContentView(I)V

    .line 85
    const v3, 0x7f0c0063

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/SprintIdHome;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/SprintIdHome$2;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/SprintIdHome$2;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/SprintIdHome;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/SprintIdHome$3;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/SprintIdHome$3;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v3, Lcom/sprint/w/installer/PackSwitcherLoader;

    iget-object v4, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v4}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sprint/w/installer/PackSwitcherLoader;-><init>(Lcom/sprint/w/installer/SprintIdHome;Lcom/sprint/id/ISprintIDService;)V

    iput-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 109
    :try_start_31
    invoke-virtual {p0}, Lcom/sprint/w/installer/SprintIdHome;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "toSwitch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 110
    .local v2, toSwitch:Z
    if-eqz v2, :cond_4d

    .line 111
    invoke-virtual {p0}, Lcom/sprint/w/installer/SprintIdHome;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "switchid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, swiId:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-virtual {v3, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->switchId(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_4e

    .line 117
    .end local v1           #swiId:Ljava/lang/String;
    .end local v2           #toSwitch:Z
    :cond_4d
    :goto_4d
    return-void

    .line 114
    :catch_4e
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error switching packs"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method


# virtual methods
.method public goGetNew(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 319
    invoke-static {p1}, Lcom/sprint/w/installer/DownloadService;->hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v2

    .line 320
    .local v2, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-static {p1}, Lcom/sprint/w/installer/PackInfo;->isDefaultPackInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 323
    .local v1, isInstalled:Z
    invoke-static {p1}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 324
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isPrepaid()Z

    move-result v3

    if-eqz v3, :cond_4d

    if-nez v2, :cond_18

    if-nez v1, :cond_4d

    .line 325
    :cond_18
    if-eqz v2, :cond_2a

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, i:Landroid/content/Intent;
    const-string v3, "EXTRA_SERVICEPACK"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    :goto_29
    return-void

    .line 331
    .end local v0           #i:Landroid/content/Intent;
    :cond_2a
    new-instance v3, Lcom/sprint/w/installer/SprintIdHome$11;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/SprintIdHome$11;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    iput-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->mBRListener:Landroid/content/BroadcastReceiver;

    .line 344
    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->mBRListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sprint.w.installer.service.DefaultPackService.ACTION_ERROR"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/sprint/w/installer/SprintIdHome;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .restart local v0       #i:Landroid/content/Intent;
    const-string v3, "ACTION_VERIFY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdHome;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_29

    .line 351
    .end local v0           #i:Landroid/content/Intent;
    :cond_4d
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 355
    .end local v0           #i:Landroid/content/Intent;
    :cond_58
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/NonDataSubscriber;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "onActivity-DONE"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 185
    packed-switch p1, :pswitch_data_20

    .line 192
    :cond_a
    :goto_a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "onActivityResult-DONE"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 195
    return-void

    .line 187
    :pswitch_15
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    if-eqz v0, :cond_a

    .line 188
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh()V

    goto :goto_a

    .line 185
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v0}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    new-instance v1, Lcom/sprint/w/installer/SprintIdHome$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/SprintIdHome$1;-><init>(Lcom/sprint/w/installer/SprintIdHome;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Binding to service"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x104000a

    .line 280
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 281
    packed-switch p1, :pswitch_data_9c

    .line 315
    :pswitch_1e
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_22
    return-object v0

    .line 283
    :pswitch_23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060032

    new-instance v2, Lcom/sprint/w/installer/SprintIdHome$8;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/SprintIdHome$8;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/sprint/w/installer/SprintIdHome$7;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/SprintIdHome$7;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_22

    .line 298
    :pswitch_4b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    const v2, 0x7f060090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/SprintIdHome$9;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SprintIdHome$9;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_22

    .line 306
    :pswitch_7a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/SprintIdHome$10;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SprintIdHome$10;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_22

    .line 281
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_1e
        :pswitch_1e
        :pswitch_23
        :pswitch_4b
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x7f0c0096

    const/4 v4, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/sprint/w/installer/SprintIdHome;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 203
    :try_start_16
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    invoke-virtual {v0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isDeveloperModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 205
    const v2, 0x7f0c0096

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 210
    .end local v0           #dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    :cond_2c
    :goto_2c
    return v4

    .line 207
    :catch_2d
    move-exception v1

    .line 208
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error loading ADP dev mode"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 236
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 239
    :cond_17
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    if-eqz v0, :cond_20

    .line 240
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdHome;->unbindService(Landroid/content/ServiceConnection;)V

    .line 243
    :cond_20
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mBRListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_29

    .line 244
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mBRListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    :cond_29
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 363
    sget-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh()V

    .line 80
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 230
    :goto_7
    const/4 v3, 0x1

    return v3

    .line 217
    :pswitch_9
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    const-class v4, Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 222
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_16
    :try_start_16
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;

    const-class v4, Lcom/sprint/w/installer/UpdaterClient;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.sprint.w.installer.ACTION_INTERACTIVE_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/SprintIdHome;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_7

    .line 225
    .end local v1           #i:Landroid/content/Intent;
    :catch_28
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error starting Updater"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 215
    nop

    :pswitch_data_32
    .packed-switch 0x7f0c0095
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "PackSwitcher pausing..."

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->mChangeListener:Lcom/sprint/w/installer/DownloadService$ChangeListener;

    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->removeChangeListener(Lcom/sprint/w/installer/DownloadService$ChangeListener;)V

    .line 164
    sget-boolean v2, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/sprint/w/installer/SprintIdHome;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 165
    const v2, 0x7f0600b3

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_24
    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 168
    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    :cond_35
    invoke-static {p0}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    .line 171
    .local v1, rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v2, v1

    if-lez v2, :cond_46

    .line 172
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, bn:Lcom/sprint/w/installer/BroadcastNotifier;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackToBeInstalled(Z)V

    .line 179
    :goto_45
    return-void

    .line 175
    .end local v0           #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    :cond_46
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 176
    .restart local v0       #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackToBeInstalled(Z)V

    goto :goto_45
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_1a

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 276
    :goto_6
    return-void

    .line 260
    :pswitch_7
    new-instance v0, Lcom/sprint/w/installer/SprintIdHome$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/SprintIdHome$5;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_6

    .line 267
    :pswitch_10
    new-instance v0, Lcom/sprint/w/installer/SprintIdHome$6;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/SprintIdHome$6;-><init>(Lcom/sprint/w/installer/SprintIdHome;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_6

    .line 258
    nop

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mChangeListener:Lcom/sprint/w/installer/DownloadService$ChangeListener;

    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->addChangeListener(Lcom/sprint/w/installer/DownloadService$ChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    if-eqz v0, :cond_2b

    .line 147
    sget-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v0, :cond_20

    .line 148
    const/4 v0, 0x0

    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    :cond_20
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 151
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh(Ljava/lang/String;)V

    .line 156
    :cond_2b
    :goto_2b
    return-void

    .line 153
    :cond_2c
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh()V

    goto :goto_2b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->getSelectedPackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    .line 129
    const-string v0, "position"

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 369
    sget-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/sprint/w/installer/SprintIdHome;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 370
    const v0, 0x7f0600b3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    :cond_18
    return-void
.end method
