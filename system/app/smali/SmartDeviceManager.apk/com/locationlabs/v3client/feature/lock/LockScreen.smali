.class public Lcom/locationlabs/v3client/feature/lock/LockScreen;
.super Landroid/app/Activity;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/lock/LockScreen$a;
    }
.end annotation


# static fields
.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field private b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

.field private c:Landroid/content/IntentFilter;

.field private d:Lav;

.field private e:Ljava/lang/Integer;

.field private f:Law;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lay;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:Landroid/app/Dialog;

.field private m:Ljava/lang/Integer;

.field private n:Ldg;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->g:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    const-string v1, "brandingImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "backgroundImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "emergencyButtonText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "overrideButtonText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "mainText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/locationlabs/v3client/feature/lock/LockScreen;->g:Ljava/util/Map;

    sget-object v2, Ldg;->p:Ldg;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    const-string v1, "backgroundImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "emergencyButtonText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "overrideButtonText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "mainText"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/locationlabs/v3client/feature/lock/LockScreen;->g:Ljava/util/Map;

    sget-object v2, Ldg;->j:Ldg;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    .line 65
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    .line 68
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->e:Ljava/lang/Integer;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a:Z

    .line 377
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->m:Ljava/lang/Integer;

    .line 378
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->n:Ldg;

    .line 857
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const/high16 v1, 0x30a0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .registers 8
    .parameter

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 532
    :try_start_1
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    iget-object v1, v1, Lav;->a:[Lbm;

    aget-object v0, v1, p1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_7} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_4c

    .line 536
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lbm;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbm;->getActivityClass()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 539
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_26} :catch_7e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_26} :catch_4c

    .line 550
    :cond_26
    :goto_26
    return-void

    .line 543
    :catch_27
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 544
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException starting whitelisted app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_26

    .line 545
    :catch_4c
    move-exception v1

    move-object p0, v1

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start whitelisted app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_26

    check-cast p0, Ljava/lang/Error;

    instance-of v0, p0, Ljava/lang/AssertionError;

    if-eqz v0, :cond_6f

    throw p0

    :cond_6f
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_74

    throw p0

    :cond_74
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_79

    throw p0

    :cond_79
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_26

    throw p0

    .line 543
    :catch_7e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2b
.end method

.method private a(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 496
    if-eqz p0, :cond_b

    .line 500
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 60
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-ne v0, v6, :cond_66

    move v0, v6

    :goto_8
    const-string v1, "Called incomingSmsWhitelist() when sms incoming whitelist not enabled"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    const-string v0, "com.locationlabs.v3client.extra.SMS_FROM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "com.locationlabs.v3client.extra.SMS_FROM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const-string v1, "com.locationlabs.v3client.extra.SMS_BODY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "com.locationlabs.v3client.extra.SMS_BODY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_29
    const-string v2, "com.locationlabs.v3client.extra.SMS_TIME_MS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    new-instance v2, Ljava/lang/Long;

    const-string v3, "com.locationlabs.v3client.extra.SMS_TIME_MS"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    :goto_3e
    new-instance v3, Lay;

    invoke-direct {v3, v0, v1, v2}, Lay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_46
    iget v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->k:I

    if-lez v1, :cond_6e

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->k:I

    if-lt v1, v2, :cond_6e

    iget-boolean v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->j:Z

    if-eqz v1, :cond_68

    move v1, v6

    :goto_59
    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->showDialog(I)V

    :cond_64
    monitor-exit v0

    return-void

    :cond_66
    move v0, v7

    goto :goto_8

    :cond_68
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_70

    :cond_6e
    move v1, v7

    goto :goto_59

    :catchall_70
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_73
    move-object v2, v3

    goto :goto_3e

    :cond_75
    move-object v1, v3

    goto :goto_29

    :cond_77
    move-object v0, v3

    goto :goto_1b
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Law;->b()Ljava/lang/Integer;

    move-result-object v2

    .line 392
    if-nez v2, :cond_23

    .line 396
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->m:Ljava/lang/Integer;

    if-nez v0, :cond_21

    move v0, v5

    .line 402
    :goto_15
    if-nez v1, :cond_2c

    .line 403
    iget-object v3, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->n:Ldg;

    if-nez v3, :cond_2a

    move v3, v5

    .line 409
    :goto_1c
    if-eqz v0, :cond_33

    if-eqz v3, :cond_33

    .line 429
    :goto_20
    return-void

    :cond_21
    move v0, v4

    .line 396
    goto :goto_15

    .line 399
    :cond_23
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->m:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_2a
    move v3, v4

    .line 403
    goto :goto_1c

    .line 406
    :cond_2c
    iget-object v3, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->n:Ldg;

    invoke-virtual {v1, v3}, Ldg;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1c

    .line 412
    :cond_33
    sget-object v0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 413
    if-nez v0, :cond_58

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find dynamic resources list for feature "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 427
    :cond_53
    iput-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->n:Ldg;

    .line 428
    iput-object v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->m:Ljava/lang/Integer;

    goto :goto_20

    .line 421
    :cond_58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ldg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {p0, v0, v2}, Lah;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5c
.end method

.method static synthetic b(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 60
    const-string v0, "com.locationlabs.v3client.extra.RESOURCE_FULL_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received resource success intent without a resource name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->b(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const-string v0, "com.locationlabs.v3client.extra.APPLICATION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/Integer;

    const-string v2, "com.locationlabs.v3client.extra.APPLICATION_ID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v0

    :goto_39
    invoke-static {v1}, Lah;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v3}, Law;->b()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v4}, Law;->c()Ldg;

    move-result-object v4

    if-nez v4, :cond_62

    move-object v4, v5

    :goto_4c
    if-eqz v0, :cond_6d

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Ls;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v2, v3}, Lm;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0, v1, v2}, Lah;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_23

    :cond_62
    iget-object v4, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v4}, Law;->c()Ldg;

    move-result-object v4

    invoke-virtual {v4}, Ldg;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_4c

    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not parse full resource name, not updating any resource view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_23

    :cond_84
    move-object v2, v5

    goto :goto_39
.end method

.method static b(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 432
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v0

    .line 436
    sget-object v1, Ldg;->j:Ldg;

    if-ne v0, v1, :cond_e

    .line 437
    const/4 v0, 0x1

    .line 439
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Z
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method private c()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 453
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 491
    :cond_8
    :goto_8
    return-void

    .line 458
    :cond_9
    invoke-static {}, Lt;->a()J

    move-result-wide v0

    .line 459
    const v2, 0x7f09002a

    const/4 v3, 0x6

    invoke-static {v0, v1, v3}, Lt;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(ILjava/lang/String;)V

    .line 462
    const v2, 0x7f090029

    invoke-static {v0, v1, v4}, Lt;->a(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(ILjava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->a()J

    move-result-wide v0

    .line 470
    const v2, 0x7f09002e

    invoke-static {v0, v1, v4}, Lt;->a(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(ILjava/lang/String;)V

    .line 478
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_8

    .line 480
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v1}, Law;->d()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 482
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 485
    :cond_48
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 585
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-eqz v0, :cond_1a

    .line 586
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    monitor-enter v0

    .line 587
    :try_start_8
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 588
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->dismissDialog(I)V

    .line 589
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 591
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_24

    .line 593
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->setPersistent(Z)V

    .line 594
    iput-boolean v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a:Z

    .line 595
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->finish()V

    .line 596
    return-void

    .line 591
    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d()V

    return-void
.end method

.method static synthetic e(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c()V

    return-void
.end method

.method static synthetic f(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Z
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 777
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    const-string v1, "com.locationlabs.extra.FEATURE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v3}, Law;->c()Ldg;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 783
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d()V

    .line 787
    :goto_33
    return-void

    .line 785
    :cond_34
    const-string v0, "Lock screen override selected with no feature, ignoring"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public do911Call(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    const-string v1, "com.locationlabs.v3client.action.thisshouldprobablyberemoved.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.EmergencyDialer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 512
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    const-string v1, "tel:911"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 575
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x400

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    .line 138
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v0

    if-nez v0, :cond_24

    .line 139
    const-string v0, "LockScreen created with no feature.  Aborting lock screen."

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 142
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;J)V

    .line 144
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d()V

    .line 186
    :cond_23
    :goto_23
    return-void

    .line 150
    :cond_24
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    .line 151
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-eqz v0, :cond_47

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    .line 153
    const-string v0, "lockscreen.incoming_sms_fifo"

    invoke-static {v0, v6}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->j:Z

    .line 154
    const-string v0, "lockscreen.incoming_sms_limit"

    invoke-static {v0, v6}, Ln;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->k:I

    .line 161
    :cond_47
    invoke-virtual {p0, v7}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->requestWindowFeature(I)Z

    .line 164
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 167
    new-instance v0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.v3client.action.UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.sparkle.action.911"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.sparkle.action.COUNTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.sparkle.action.INCOMING_SMS_WHITELIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_86
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    const-string v1, "com.locationlabs.v3client.action.RESOURCE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v0

    sget-object v1, Ldg;->p:Ldg;

    if-ne v0, v1, :cond_10a

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->setContentView(I)V

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_ab
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v2}, Law;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_12b

    move v3, v7

    :goto_bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No more than 3 whitelisted apps are supported in the current LockScreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lj;->a(ZLjava/lang/String;)V

    new-instance v3, Lav;

    invoke-direct {v3, p0, v2}, Lav;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    check-cast v0, Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_e5
    if-eqz v1, :cond_f2

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f:Law;

    invoke-virtual {v0}, Law;->d()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_f2
    :goto_f2
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b()V

    .line 176
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c()V

    .line 179
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-eqz v0, :cond_23

    .line 184
    const-class v0, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;

    invoke-static {p0, v0, v7}, Lf;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    goto/16 :goto_23

    .line 169
    :cond_10a
    sget-object v1, Ldg;->j:Ldg;

    if-ne v0, v1, :cond_123

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->setContentView(I)V

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_ab

    :cond_123
    const-string v0, "No feature for layout, we should have already aborted the lock screen by now"

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v2

    goto :goto_ab

    :cond_12b
    move v3, v6

    goto :goto_bd

    :cond_12d
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 617
    packed-switch p1, :pswitch_data_d4

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected dialog id in LockScreen.onCreateDialog(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move-object v0, v3

    .line 722
    :goto_1d
    return-object v0

    .line 620
    :pswitch_1e
    invoke-static {p0}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Law;->b()Ljava/lang/Integer;

    move-result-object v1

    .line 622
    invoke-virtual {v0}, Law;->c()Ldg;

    move-result-object v0

    .line 623
    if-nez v1, :cond_31

    .line 624
    const-string v2, "LockScreen.onCreateDialog(): appId not set"

    invoke-static {v2}, Li;->d(Ljava/lang/String;)V

    .line 626
    :cond_31
    if-nez v0, :cond_3d

    .line 627
    const-string v0, "LockScreen.onCreateDialog(): feature not set, not creating dialog"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->finish()V

    move-object v0, v3

    .line 633
    goto :goto_1d

    .line 636
    :cond_3d
    const-string v2, "overridePopupTitleText"

    invoke-static {v0, v2}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    const-string v3, "overridePopupMessageText"

    invoke-static {v0, v3}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-static {p0, v2, v1}, Lah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lef;

    move-result-object v0

    check-cast v0, Ler;

    iget-object v2, v0, Ler;->a:Ljava/lang/String;

    .line 639
    invoke-static {p0, v3, v1}, Lah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lef;

    move-result-object v0

    check-cast v0, Ler;

    iget-object v0, v0, Ler;->a:Ljava/lang/String;

    .line 641
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07000c

    new-instance v3, Lcom/locationlabs/v3client/feature/lock/LockScreen$2;

    invoke-direct {v3, p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$2;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07000d

    new-instance v3, Lcom/locationlabs/v3client/feature/lock/LockScreen$1;

    invoke-direct {v3, p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$1;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1d

    .line 661
    :pswitch_86
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-ne v0, v2, :cond_d2

    move v0, v2

    :goto_8b
    const-string v1, "Received create SMS (1) dialog when sms incoming whitelist not enabled"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 664
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f080001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    .line 665
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 666
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 667
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 669
    new-instance v1, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;

    invoke-direct {v1, p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    .line 696
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 697
    new-instance v2, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;

    invoke-direct {v2, p0, v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    new-instance v1, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;

    invoke-direct {v1, p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 718
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    goto/16 :goto_1d

    :cond_d2
    move v0, v4

    .line 661
    goto :goto_8b

    .line 617
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_86
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-eqz v0, :cond_a

    .line 305
    const-class v0, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lf;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen$a;

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 238
    const/16 v0, 0x42

    if-eq p1, v0, :cond_8

    const/16 v0, 0x17

    if-ne p1, v0, :cond_17

    .line 240
    :cond_8
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    invoke-virtual {v0}, Lav;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_17

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(I)V

    .line 247
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 202
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b()V

    .line 204
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c()V

    .line 205
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 280
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a:Z

    if-nez v0, :cond_11

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.POKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    :cond_11
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 730
    packed-switch p1, :pswitch_data_96

    .line 771
    :goto_5
    return-void

    .line 733
    :pswitch_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_5

    .line 736
    :pswitch_a
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->h:Z

    if-ne v0, v3, :cond_7c

    move v0, v3

    :goto_f
    const-string v1, "Received prepare SMS (1) dialog when sms incoming whitelist not enabled"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    monitor-enter v1

    .line 739
    :try_start_17
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 741
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->j:Z

    if-eqz v0, :cond_7e

    .line 743
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay;

    move-object v2, v0

    .line 750
    :goto_2d
    iget-object v0, v2, Lay;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    if-nez v0, :cond_8f

    .line 754
    iget-object v0, v2, Lay;->a:Ljava/lang/String;

    invoke-static {v0}, Ls;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 759
    :goto_3c
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    const v4, 0x7f09001e

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 760
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    const v3, 0x7f090020

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 762
    iget-object v3, v2, Lay;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->l:Landroid/app/Dialog;

    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 764
    iget-object v2, v2, Lay;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lt;->a(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 770
    :goto_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_17 .. :try_end_78} :catchall_79

    goto :goto_5

    :catchall_79
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7c
    move v0, v1

    .line 736
    goto :goto_f

    .line 747
    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay;

    move-object v2, v0

    goto :goto_2d

    :cond_8f
    move-object v3, v0

    .line 756
    goto :goto_3c

    .line 768
    :cond_91
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V
    :try_end_94
    .catchall {:try_start_7e .. :try_end_94} :catchall_79

    goto :goto_77

    .line 730
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 299
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b()V

    .line 218
    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c()V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->setDefaultKeyMode(I)V

    .line 222
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 581
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->setPersistent(Z)V

    .line 195
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 293
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 272
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 256
    :pswitch_9
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    invoke-virtual {v0}, Lav;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->e:Ljava/lang/Integer;

    goto :goto_7

    .line 260
    :pswitch_12
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d:Lav;

    invoke-virtual {v0}, Lav;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 265
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(I)V

    .line 268
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen;->e:Ljava/lang/Integer;

    goto :goto_7

    .line 253
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method

.method public override(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 602
    const-string v0, "user pressed lockscreen override button (which displays popup, but it has not yet been confirmed)"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->showDialog(I)V

    .line 609
    return-void
.end method

.method public runWhitelistedApp(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 524
    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(I)V

    .line 525
    return-void
.end method
