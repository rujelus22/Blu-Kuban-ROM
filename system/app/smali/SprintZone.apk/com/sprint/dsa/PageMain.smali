.class public Lcom/sprint/dsa/PageMain;
.super Landroid/app/Activity;
.source "PageMain.java"


# static fields
.field public static final ACTION_UPGRADE_CHECK:Ljava/lang/String; = "com.sprint.action.UPGRADE_CHECK"

.field public static final EXTRA_ALT_TITLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_TITLE"

.field public static final EXTRA_ALT_UPDATE_URL:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_URL"

.field public static final EXTRA_NO_PROMPT:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_NO_PROMPT"

.field public static final EXTRA_POST_UPDATE_ACTION:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

.field private static final LOADING_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SprintZone_PageMain"


# instance fields
.field action:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field private mActivityResumed:Z

.field private mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private mPrefs:Lcom/sprint/dsa/Prefs;

.field private mUpdateReciever:Landroid/content/BroadcastReceiver;

.field private mUpdateRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    .line 41
    iput-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mActivityResumed:Z

    .line 284
    new-instance v0, Lcom/sprint/dsa/PageMain$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageMain$1;-><init>(Lcom/sprint/dsa/PageMain;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageMain;->mUpdateReciever:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageMain;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/dsa/PageMain;)Lcom/sprint/dsa/Prefs;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/PageMain;)Z
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/PageMain;)V
    .registers 1
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/sprint/dsa/PageMain;->dispatchPages()V

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/dsa/PageMain;)Z
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    return v0
.end method

.method private dispatchPages()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    .line 203
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 204
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-static {v1}, Lcom/sprint/dsa/Reporting;->reportAirplaneMode(Lcom/sprint/dsa/data/DbAdapter;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/AirPlaneModeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v3}, Lcom/sprint/dsa/PageMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    :goto_23
    return-void

    .line 208
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 213
    :try_start_36
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 214
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_ACTIVATE_PHONE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->startActivity(Landroid/content/Intent;)V

    .line 231
    :goto_51
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_54} :catch_55

    goto :goto_23

    .line 232
    :catch_55
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_PAGE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->startActivity(Landroid/content/Intent;)V

    .line 240
    const v1, 0x7f080019

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    goto :goto_23

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :cond_70
    :try_start_70
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->action:Ljava/lang/String;

    if-eqz v1, :cond_a0

    sget-boolean v1, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v1, :cond_a0

    .line 218
    const-string v1, "com.sprint.dsa.DSA_ACTIVITY"

    iget-object v2, p0, Lcom/sprint/dsa/PageMain;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 220
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    :goto_91
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_51

    .line 224
    :cond_97
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_91

    .line 228
    :cond_a0
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/sprint/dsa/PageMain;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->startActivity(Landroid/content/Intent;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_ad} :catch_55

    goto :goto_51
.end method

.method private showWelcomeMessage()V
    .registers 4

    .prologue
    .line 266
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 267
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 269
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 270
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sprint/dsa/PageMain$2;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageMain$2;-><init>(Lcom/sprint/dsa/PageMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 325
    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_12

    .line 260
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    .line 263
    :cond_6
    :goto_6
    return-void

    .line 254
    :pswitch_7
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    goto :goto_6

    .line 257
    :pswitch_d
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    goto :goto_6

    .line 252
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_52

    .line 58
    const-string v6, "com.sprint.dsa.model"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 59
    const-string v6, "com.sprint.dsa.make"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    .line 60
    const-string v6, "com.sprint.dsa.end"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    .line 62
    :cond_2a
    const-string v6, "com.sprint.dsa.query"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    .line 63
    const-string v6, "com.sprint.dsa.fd"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, fd:Ljava/lang/String;
    const-string v6, "com.sprint.dsa.emulator"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, emulator:Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 66
    sput-boolean v9, Lcom/sprint/dsa/Util;->EMULATOR:Z

    .line 67
    const-string v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 68
    sput-boolean v9, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    .line 76
    .end local v1           #emulator:Ljava/lang/String;
    .end local v2           #fd:Ljava/lang/String;
    :cond_52
    :goto_52
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sprint/dsa/data/Device;->onlyActivition()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 77
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sprint/dsa/ActivationActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/PageMain;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->finish()V

    .line 134
    :goto_69
    return-void

    .line 70
    .restart local v1       #emulator:Ljava/lang/String;
    .restart local v2       #fd:Ljava/lang/String;
    :cond_6a
    sput-boolean v8, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    goto :goto_52

    .line 82
    .end local v1           #emulator:Ljava/lang/String;
    .end local v2           #fd:Ljava/lang/String;
    :cond_6d
    new-instance v6, Lcom/sprint/dsa/Prefs;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    .line 83
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/PageMain;->action:Ljava/lang/String;

    .line 87
    :try_start_7e
    new-instance v6, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 88
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v6

    if-nez v6, :cond_92

    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_7e .. :try_end_92} :catch_112

    .line 94
    :cond_92
    :goto_92
    invoke-static {p0}, Lcom/sprint/dsa/SprintZone;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    .line 98
    .local v5, thisLaunchVersion:I
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->isFirstLaunch()Z

    move-result v6

    if-nez v6, :cond_a2

    sget-boolean v6, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v6, :cond_ea

    .line 99
    :cond_a2
    const-string v6, "com.sprint.dsa.DSA_ACTIVITY"

    iget-object v7, p0, Lcom/sprint/dsa/PageMain;->action:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e1

    .line 100
    invoke-direct {p0}, Lcom/sprint/dsa/PageMain;->showWelcomeMessage()V

    .line 106
    :goto_af
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->isDbInitialized()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 107
    iput-boolean v9, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    .line 109
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mUpdateReciever:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    .line 110
    const-string v8, "com.sprint.dsa.ACTION_UPDATE_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v6, v7}, Lcom/sprint/dsa/PageMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/sprint/dsa/UpdateService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "INIT_DB"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/PageMain;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d4
    :goto_d4
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6, v5}, Lcom/sprint/dsa/Prefs;->setLaunchVersion(I)V

    .line 133
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/PageMain;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_69

    .line 102
    :cond_e1
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6, v8}, Lcom/sprint/dsa/Prefs;->setFirstLaunch(Z)V

    .line 103
    invoke-virtual {p0, v8}, Lcom/sprint/dsa/PageMain;->showDialog(I)V

    goto :goto_af

    .line 116
    :cond_ea
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v6}, Lcom/sprint/dsa/Prefs;->getLaunchVersion()I

    move-result v4

    .line 119
    .local v4, lastLaunchVersion:I
    if-gt v5, v4, :cond_f4

    if-nez v4, :cond_d4

    .line 120
    :cond_f4
    iput-boolean v9, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    .line 121
    iget-object v6, p0, Lcom/sprint/dsa/PageMain;->mUpdateReciever:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    .line 122
    const-string v8, "com.sprint.dsa.ACTION_UPDATE_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v6, v7}, Lcom/sprint/dsa/PageMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/sprint/dsa/UpdateService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.sprint.extra.LOAD_LOCAL_SZA"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/PageMain;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d4

    .line 89
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #lastLaunchVersion:I
    .end local v5           #thisLaunchVersion:I
    :catch_112
    move-exception v6

    goto/16 :goto_92
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_1e

    .line 314
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 307
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageMain;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_4

    .line 305
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    const-string v3, "SPRINT_ZONE_PAGE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, pageid:I
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMain;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SPRINT_ZONE_PAGE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v3, "com.sprint.dsa.DSA_ACTIVITY"

    iget-object v4, p0, Lcom/sprint/dsa/PageMain;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 148
    iget-object v3, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    const-string v4, "*2"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sprint/dsa/Reporting;->reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_25
    return-void

    .line 154
    :cond_26
    const-string v3, "com.sprint.extra.PACK_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, packId:Ljava/lang/String;
    const-string v3, "com.sprint.extra.launchedFromNotification"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, fromNotification:Z
    if-eqz v0, :cond_3c

    .line 160
    iget-object v3, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    const-string v4, "notification"

    invoke-static {v3, v4, v1}, Lcom/sprint/dsa/Reporting;->reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 163
    :cond_3c
    iget-object v3, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    const-string v4, "launcher"

    invoke-static {v3, v4, v1}, Lcom/sprint/dsa/Reporting;->reportAppStart(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method protected onPause()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mActivityResumed:Z

    .line 173
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageMain;->dismissDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_10

    .line 177
    :goto_7
    iget-object v0, p0, Lcom/sprint/dsa/PageMain;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    return-void

    .line 174
    :catch_10
    move-exception v0

    goto :goto_7
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mActivityResumed:Z

    .line 190
    iget-object v0, p0, Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;

    invoke-virtual {v0}, Lcom/sprint/dsa/Prefs;->isFirstLaunch()Z

    move-result v0

    if-nez v0, :cond_15

    .line 191
    iget-boolean v0, p0, Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z

    if-nez v0, :cond_16

    .line 192
    invoke-direct {p0}, Lcom/sprint/dsa/PageMain;->dispatchPages()V

    .line 197
    :cond_15
    :goto_15
    return-void

    .line 194
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageMain;->showDialog(I)V

    goto :goto_15
.end method
