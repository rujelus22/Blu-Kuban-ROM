.class public Lcom/samsung/swift/install/InstallActivity;
.super Landroid/app/Activity;
.source "InstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXPLICIT_INSTALL_EVENT:Ljava/lang/String; = null

.field public static final EXTRA_WORLDREADABLE:Ljava/lang/String; = "worldReadable"

.field private static final LOGTAG:Ljava/lang/String;

.field public static final RESUMED_EVENT:Ljava/lang/String;

.field public static final SETWORLDREASABLE:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/install/InstallActivity;

.field public static isSamsungHandset:Z


# instance fields
.field private confimrationDialog:Landroid/app/AlertDialog;

.field private final handler:Landroid/os/Handler;

.field private installButton:Landroid/widget/Button;

.field private installProgressBar:Landroid/widget/ProgressBar;

.field private installStatus:Landroid/widget/TextView;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/swift/install/InstallActivity;->isSamsungHandset:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/install/InstallActivity;->RESUMED_EVENT:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SetWorld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/install/InstallActivity;->SETWORLDREASABLE:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ExplicitInstall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/install/InstallActivity;->EXPLICIT_INSTALL_EVENT:Ljava/lang/String;

    .line 144
    const-class v0, Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/samsung/swift/install/InstallActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/swift/install/InstallActivity$1;-><init>(Lcom/samsung/swift/install/InstallActivity;)V

    iput-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->installStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->installProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/install/InstallActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/swift/install/InstallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity;->confimrationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private findIdIfExist(Ljava/lang/String;)I
    .registers 3
    .parameter "id"

    .prologue
    .line 467
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/install/InstallActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "id"
    .parameter "type"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/samsung/swift/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, stringId:I
    if-eqz v0, :cond_13

    .line 463
    .end local v0           #stringId:I
    :goto_12
    return v0

    .restart local v0       #stringId:I
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private findStringIfExists(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/samsung/swift/install/InstallActivity;->findIdIfExist(Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, stringId:I
    if-eqz v0, :cond_f

    .line 452
    invoke-virtual {p0}, Lcom/samsung/swift/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private findViewIfExists(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "id"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/samsung/swift/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, viewId:I
    if-eqz v0, :cond_19

    .line 443
    invoke-virtual {p0, v0}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 445
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/install/InstallActivity;
    .registers 2

    .prologue
    .line 148
    const-class v0, Lcom/samsung/swift/install/InstallActivity;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/install/InstallActivity;->instance:Lcom/samsung/swift/install/InstallActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static makeIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized setInstance(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 3
    .parameter "instance"

    .prologue
    .line 153
    const-class v0, Lcom/samsung/swift/install/InstallActivity;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/install/InstallActivity;->instance:Lcom/samsung/swift/install/InstallActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 154
    monitor-exit v0

    return-void

    .line 153
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/swift/R$id;->installButton:I

    if-ne v0, v1, :cond_12

    .line 419
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/install/InstallActivity;->EXPLICIT_INSTALL_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/install/InstallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 187
    sget v8, Lcom/samsung/swift/R$string;->manufacturer:I

    invoke-static {v8}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, manufacturer:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/samsung/swift/install/InstallActivity;->overridePendingTransition(II)V

    .line 192
    const/4 v4, 0x0

    .line 200
    .local v4, isSamsung:Z
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bd

    :cond_2a
    const/4 v4, 0x1

    .line 208
    :goto_2b
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    const-string v9, "*******************************************"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HANDSET MANUFACTURER = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HANDSET BRAND = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HANDSET MODEL = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    const-string v9, "*******************************************"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean v8, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v8, :cond_8d

    if-eqz v4, :cond_15b

    .line 217
    :cond_8d
    sget-boolean v8, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v8, :cond_c0

    .line 219
    sget v8, Lcom/samsung/swift/R$layout;->install:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->setContentView(I)V

    .line 220
    sget v8, Lcom/samsung/swift/R$id;->installButton:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;

    .line 221
    iget-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v8, Lcom/samsung/swift/R$id;->installProgressBar:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installProgressBar:Landroid/widget/ProgressBar;

    .line 223
    sget v8, Lcom/samsung/swift/R$id;->installStatus:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installStatus:Landroid/widget/TextView;

    .line 294
    :cond_b9
    :goto_b9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 295
    return-void

    .line 200
    :cond_bd
    const/4 v4, 0x0

    goto/16 :goto_2b

    .line 227
    :cond_c0
    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_12d

    .line 228
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->requestWindowFeature(I)Z

    .line 232
    :cond_ca
    :goto_ca
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v8

    if-eqz v8, :cond_14f

    .line 234
    const v8, 0x103006e

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->setTheme(I)V

    .line 236
    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_143

    sget-boolean v8, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v8, :cond_143

    .line 237
    const-string v8, "install_kiesair_holo_light"

    const-string v9, "layout"

    invoke-direct {p0, v8, v9}, Lcom/samsung/swift/install/InstallActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->setContentView(I)V

    .line 244
    :goto_eb
    sget v8, Lcom/samsung/swift/R$id;->installButton:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;

    .line 245
    iget-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    sget v8, Lcom/samsung/swift/R$id;->installProgressBar:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installProgressBar:Landroid/widget/ProgressBar;

    .line 247
    sget v8, Lcom/samsung/swift/R$id;->installStatus:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/install/InstallActivity;->installStatus:Landroid/widget/TextView;

    .line 249
    const-string v8, "installHelpText"

    invoke-direct {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    .local v1, helpInInstall:Landroid/widget/TextView;
    if-eqz v1, :cond_b9

    .line 252
    const-string v8, "help_in_stop"

    invoke-static {v8}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, helpText1:Ljava/lang/String;
    if-eqz v2, :cond_b9

    .line 255
    move-object v3, v2

    .line 256
    .local v3, helpTextCombined:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b9

    .line 229
    .end local v1           #helpInInstall:Landroid/widget/TextView;
    .end local v2           #helpText1:Ljava/lang/String;
    .end local v3           #helpTextCombined:Ljava/lang/String;
    :cond_12d
    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_ca

    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xe

    if-ge v8, v9, :cond_ca

    sget-boolean v8, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v8, :cond_ca

    .line 230
    const/16 v8, 0x9

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->requestWindowFeature(I)Z

    goto :goto_ca

    .line 239
    :cond_143
    const-string v8, "install_kiesair"

    const-string v9, "layout"

    invoke-direct {p0, v8, v9}, Lcom/samsung/swift/install/InstallActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->setContentView(I)V

    goto :goto_eb

    .line 242
    :cond_14f
    const-string v8, "install_kiesair"

    const-string v9, "layout"

    invoke-direct {p0, v8, v9}, Lcom/samsung/swift/install/InstallActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->setContentView(I)V

    goto :goto_eb

    .line 263
    :cond_15b
    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->LOGTAG:Ljava/lang/String;

    const-string v9, "******** CANNOT INSTALL ON THIS DEVICE. NOT SUPPORTED ********"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v8, 0x0

    sput-boolean v8, Lcom/samsung/swift/install/InstallActivity;->isSamsungHandset:Z

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const-string v8, "installerTitle"

    invoke-direct {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_175

    .line 272
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    :cond_175
    const-string v8, "nonSamsungHandset"

    invoke-direct {p0, v8}, Lcom/samsung/swift/install/InstallActivity;->findStringIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, message:Ljava/lang/String;
    if-eqz v6, :cond_180

    .line 277
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    :cond_180
    sget v8, Lcom/samsung/swift/R$string;->ok_button:I

    new-instance v9, Lcom/samsung/swift/install/InstallActivity$2;

    invoke-direct {v9, p0}, Lcom/samsung/swift/install/InstallActivity$2;-><init>(Lcom/samsung/swift/install/InstallActivity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 426
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 429
    invoke-virtual {p0, v0}, Lcom/samsung/swift/install/InstallActivity;->moveTaskToBack(Z)Z

    .line 433
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/swift/install/InstallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/install/InstallActivity;->setInstance(Lcom/samsung/swift/install/InstallActivity;)V

    .line 165
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, intentFiler:Landroid/content/IntentFilter;
    sget-object v1, Lcom/samsung/swift/service/Installer;->STATE_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/swift/install/InstallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/swift/install/InstallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-static {p0}, Lcom/samsung/swift/install/InstallActivity;->setInstance(Lcom/samsung/swift/install/InstallActivity;)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/swift/install/InstallActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/swift/install/InstallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->confimrationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 369
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->confimrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->confimrationDialog:Landroid/app/AlertDialog;

    .line 372
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 373
    return-void
.end method

.method public showDeveloperModeDialog()V
    .registers 4

    .prologue
    .line 377
    move-object v0, p0

    .line 378
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/swift/install/InstallActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/samsung/swift/install/InstallActivity$7;-><init>(Lcom/samsung/swift/install/InstallActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method

.method public update(ILjava/lang/String;S)V
    .registers 6
    .parameter "state"
    .parameter "file"
    .parameter "progress"

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_30

    .line 359
    :goto_3
    :pswitch_3
    return-void

    .line 307
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/swift/install/InstallActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/swift/install/InstallActivity$3;-><init>(Lcom/samsung/swift/install/InstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 317
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/swift/install/InstallActivity$4;

    invoke-direct {v1, p0, p3}, Lcom/samsung/swift/install/InstallActivity$4;-><init>(Lcom/samsung/swift/install/InstallActivity;S)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 332
    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/swift/install/InstallActivity$5;

    invoke-direct {v1, p0, p3}, Lcom/samsung/swift/install/InstallActivity$5;-><init>(Lcom/samsung/swift/install/InstallActivity;S)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 347
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/swift/install/InstallActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/swift/install/InstallActivity$6;-><init>(Lcom/samsung/swift/install/InstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 304
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_25
        :pswitch_4
    .end packed-switch
.end method
