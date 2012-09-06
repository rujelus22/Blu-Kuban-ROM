.class public Lcom/google/android/apps/docs/app/NewMainProxyActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "NewMainProxyActivity.java"

# interfaces
.implements Lhe;


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/os/Bundle;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lhc;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ljava/lang/Class;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "StartingActivityOnLaunch"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->b:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/MainDriveProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v1, "desiredApplicationMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    const-string v1, "launchingState"

    sget-object v2, Lhi;->c:Lhi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 455
    const-string v1, "launchingEvent"

    sget-object v2, Lhh;->c:Lhh;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;LkM;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    const-class v1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "collectionResourceId"

    invoke-virtual {p2}, LkM;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lnk;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lhf;->c:Lhf;

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    const-string v1, "launchDocList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v1, "mainFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lhi;Lhh;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const-string v0, "accountName"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v0, "launchingState"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 420
    const-string v0, "launchingEvent"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 423
    const-string v0, "proxyBundle"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 424
    const-string v3, "proxyBundle"

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    const-string v0, "wasTaskRoot"

    const-string v3, "wasTaskRoot"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lhl;

    invoke-direct {v1, p0}, Lhl;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method public static a(Landroid/content/Context;LdL;Ljava/lang/String;Ldg;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    sget-object v0, LdL;->b:LdL;

    if-ne p1, v0, :cond_12

    const-string v0, "FirstTimeDrive"

    .line 384
    :goto_6
    :try_start_6
    invoke-interface {p3, p2}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v1

    .line 385
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lde;->a(Ljava/lang/String;Z)V

    .line 386
    invoke-interface {p3, v1}, Ldg;->a(Lde;)V
    :try_end_11
    .catch Ldh; {:try_start_6 .. :try_end_11} :catch_15

    .line 390
    :goto_11
    return-void

    .line 380
    :cond_12
    const-string v0, "FirstTimeDocs"

    goto :goto_6

    .line 387
    :catch_15
    move-exception v0

    .line 388
    const-string v0, "MainProxyActivity"

    const-string v1, "Failed to save account preference."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lnk;Lhg;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    const-string v1, "dialogToShow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    if-eqz p2, :cond_2f

    .line 372
    const-string v1, "mainFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 373
    const-string v1, "docListTitle"

    invoke-virtual {p2}, Lnk;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    :cond_2f
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/BaseActivity;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lhg;->a(Landroid/content/Intent;)Lhg;

    move-result-object v1

    .line 342
    instance-of v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;

    if-eqz v0, :cond_25

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 345
    const-string v2, "launchDocList"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 346
    const-string v2, "mainFilter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnk;

    .line 348
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;Lhg;)V

    .line 362
    :cond_24
    :goto_24
    return-void

    .line 353
    :cond_25
    sget-object v0, Lhg;->b:Lhg;

    if-ne v1, v0, :cond_2d

    .line 354
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_24

    .line 355
    :cond_2d
    sget-object v0, Lhg;->c:Lhg;

    if-ne v1, v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Lx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->a(Lx;)V

    goto :goto_24

    .line 358
    :cond_3f
    sget-object v0, Lhg;->d:Lhg;

    if-ne v1, v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 360
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Lx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a(Ljava/lang/String;Lx;)V

    goto :goto_24
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->d()V

    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 144
    const-string v0, "accountName"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v0, "launchingState"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhi;

    .line 148
    if-nez v0, :cond_66

    .line 149
    sget-object v3, Lhi;->c:Lhi;

    .line 151
    :goto_16
    const-string v0, "launchingEvent"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhh;

    .line 153
    if-nez v0, :cond_64

    .line 154
    sget-object v4, Lhh;->c:Lhh;

    .line 158
    :goto_22
    sget-object v0, Lhi;->c:Lhi;

    if-ne v3, v0, :cond_4d

    .line 159
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_31

    .line 161
    iget-object v2, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 170
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    const-string v2, "desiredApplicationMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhf;

    .line 172
    if-nez v0, :cond_62

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lhf;->b:Lhf;

    :goto_45
    move-object v2, v0

    .line 177
    :goto_46
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Lhc;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lhc;->a(Ljava/lang/String;Lhf;Lhi;Lhh;Lhe;)V

    .line 179
    return-void

    .line 167
    :cond_4d
    iget-object v5, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    const-string v0, "proxyBundle"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_31

    .line 173
    :cond_5f
    sget-object v0, Lhf;->a:Lhf;

    goto :goto_45

    :cond_62
    move-object v2, v0

    goto :goto_46

    :cond_64
    move-object v4, v0

    goto :goto_22

    :cond_66
    move-object v3, v0

    goto :goto_16
.end method

.method private d()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->b:Landroid/os/Handler;

    new-instance v1, Lhj;

    invoke-direct {v1, p0}, Lhj;-><init>(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 315
    new-instance v0, Lhk;

    invoke-direct {v0, p0}, Lhk;-><init>(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    .line 336
    iget-object v1, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LHW;

    const-string v2, "com.google"

    invoke-interface {v1, v2, p0, v0}, LHW;->a(Ljava/lang/String;Landroid/app/Activity;LHX;)V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "proxyBundle"

    iget-object v2, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    const-string v1, "wasTaskRoot"

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->d()V

    .line 260
    return-void
.end method

.method public a(Ljava/lang/String;LdL;Lhg;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LdO;

    invoke-virtual {v0}, LdO;->a()V

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "triggerSync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    sget-object v1, Lhg;->a:Lhg;

    if-ne p3, v1, :cond_32

    const-string v1, "dialogToShow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 206
    :cond_32
    const-string v1, "dialogToShow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 209
    :cond_37
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->d()V

    .line 211
    return-void
.end method

.method public a(Ljava/lang/String;Lhg;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    const-string v1, "launchDocList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    const-string v1, "mainFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnk;

    .line 218
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;Lhg;)V

    .line 235
    :cond_18
    :goto_18
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->d()V

    .line 236
    return-void

    .line 220
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    const-string v1, "dialogToShow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhg;

    .line 222
    sget-object v1, Lhg;->a:Lhg;

    if-ne p2, v1, :cond_2d

    if-eqz v0, :cond_2d

    move-object p2, v0

    .line 226
    :cond_2d
    sget-object v0, Lhg;->b:Lhg;

    if-ne p2, v0, :cond_18

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_18
.end method

.method a()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "proxyBundle"

    iget-object v2, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 244
    const-string v1, "wasTaskRoot"

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->d()V

    .line 248
    return-void
.end method

.method public isTaskRoot()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->isTaskRoot()Z

    move-result v1

    .line 184
    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wasTaskRoot"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "MainProxyActivity"

    const-string v1, "in onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LdO;

    invoke-virtual {v0}, LdO;->a()V

    .line 121
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_51

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "/launcherClickedDrive"

    .line 128
    :goto_34
    const-string v2, "MainProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LdE;

    invoke-virtual {v2, v0, v1}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 132
    :cond_51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->c()V

    .line 133
    return-void

    .line 126
    :cond_55
    const-string v0, "/launcherClickedDocs"

    goto :goto_34
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 138
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onDestroy()V

    .line 139
    return-void
.end method
