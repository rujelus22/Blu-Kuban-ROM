.class public Lcom/google/android/apps/docs/app/DocumentOpenerActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "DocumentOpenerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Low;
.implements LpP;


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private a:I

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LVj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/Runnable;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/concurrent/Executor;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LnQ;

.field public a:LpO;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DefaultRemote"
    .end annotation
.end field

.field public a:LpY;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lrs;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lrx;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field public b:LpO;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DefaultLocal"
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const-string v0, "content://com.google.android.apps.docs/open"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:I

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Landroid/os/Handler;

    .line 169
    new-instance v0, LZu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, LZu;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a(LkR;Landroid/os/Bundle;)LalU;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "LalU",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    .line 356
    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, LkU;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LkR;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LkR;->d()Z

    move-result v4

    invoke-static {v0, v3, v4}, LkT;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:I

    .line 360
    const-string v0, "documentOpenMethod"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_46

    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    .line 366
    :goto_25
    sget-object v3, LeD;->a:LeD;

    if-ne v0, v3, :cond_97

    .line 367
    invoke-virtual {p1}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 368
    invoke-virtual {p1}, LkR;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LpO;

    .line 406
    :cond_37
    :goto_37
    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    .line 407
    if-nez v0, :cond_bf

    .line 408
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lama;->a(Ljava/lang/Object;)Z

    .line 427
    :goto_45
    return-object v1

    .line 361
    :cond_46
    sget-object v0, LeD;->a:LeD;

    goto :goto_25

    .line 378
    :cond_49
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LQN;

    sget-object v1, LQM;->a:LQM;

    invoke-interface {v0, p1, v1}, LQN;->c(LkR;LQM;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 380
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lrx;

    invoke-virtual {v0, v2}, Lrx;->a(Ljava/lang/Object;)LpO;

    move-result-object v0

    .line 381
    if-nez v0, :cond_37

    .line 382
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "calling defaultRemoteDocumentOpener.openFile"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LpO;

    goto :goto_37

    .line 386
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lrs;

    invoke-virtual {v0, v2}, Lrs;->a(Ljava/lang/Object;)LpO;

    move-result-object v0

    .line 387
    if-nez v0, :cond_37

    .line 388
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "calling defaultLocalDocumentOpener.openFile"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:LpO;

    goto :goto_37

    .line 393
    :cond_7d
    const-string v0, "DocumentOpenerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document lacks an html uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_37

    .line 396
    :cond_97
    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v1

    invoke-virtual {v0, v1}, LeD;->a(LkU;)LQM;

    move-result-object v0

    .line 397
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LQN;

    invoke-interface {v1, p1, v0}, LQN;->c(LkR;LQM;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 399
    :cond_ad
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LpY;

    invoke-virtual {v0, v2}, LpY;->a(Ljava/lang/Object;)LpO;

    move-result-object v0

    goto :goto_37

    .line 401
    :cond_b4
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "calling defaultLocalDocumentOpener.openFile"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:LpO;

    goto/16 :goto_37

    .line 410
    :cond_bf
    const-string v2, "DocumentOpenerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling opener.openFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-interface {v0, p0, p1, p2}, LpO;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 413
    new-instance v2, LeI;

    invoke-direct {v2, p0, v1}, LeI;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Lama;)V

    .line 425
    iget-object v3, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v3}, LalO;->a(LalU;LalN;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_45
.end method

.method public static a(Landroid/content/Context;Lld;Z)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 658
    const-string v0, "null context"

    invoke-static {p0, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 662
    const-string v1, "editMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    return-object v0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-static {p3}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "docListTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static a(LkU;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 693
    if-nez p0, :cond_5

    .line 694
    const-string v0, "application/vnd.google-apps"

    .line 696
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/vnd.google-apps."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LkU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LnQ;)LnQ;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lld;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 525
    new-instance v0, LeJ;

    invoke-direct {v0, p0, p1, p2}, LeJ;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Context;Lld;)V

    .line 568
    invoke-virtual {v0}, Lcg;->start()V

    .line 569
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;)V

    return-void
.end method

.method private a(LpQ;)V
    .registers 3
    .parameter

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;Ljava/lang/Throwable;)V

    .line 668
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LkG;LkT;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkG;LkT;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->i:Z

    return p1
.end method

.method private a(LkG;LkT;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LeZ;

    sget-object v2, LeV;->o:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 326
    invoke-static {p2, v0}, LlP;->a(LkT;Ljava/util/Date;)LlP;

    move-result-object v1

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lmi;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LXJ;

    invoke-static {p0, v2}, Lmp;->a(Landroid/content/Context;LXJ;)Lmo;

    move-result-object v5

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lmp;->a(Lmi;Lmg;LkT;Landroid/content/Context;LkG;Lmo;)I

    move-result v0

    .line 333
    if-eqz v0, :cond_44

    .line 334
    const-string v1, "DocumentOpenerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not mark Entry as viewed; result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    .line 343
    :goto_3d
    return v0

    .line 340
    :cond_3e
    invoke-virtual {p2, v0}, LkT;->c(Ljava/util/Date;)V

    .line 341
    invoke-virtual {p2}, LkT;->c()V

    .line 343
    :cond_44
    const/4 v0, 0x1

    goto :goto_3d
.end method

.method private b(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 237
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 238
    const-string v0, "resourceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_2f

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2f

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    .line 245
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 246
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 248
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    .line 250
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 251
    sget-object v0, LpQ;->b:LpQ;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;)V

    .line 318
    :cond_52
    :goto_52
    return-void

    .line 255
    :cond_53
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 256
    if-nez v0, :cond_63

    .line 257
    sget-object v0, LpQ;->b:LpQ;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;)V

    goto :goto_52

    .line 261
    :cond_63
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v1

    .line 262
    if-nez v1, :cond_93

    .line 265
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llu;->a(LkG;Ljava/lang/String;)LkM;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_8d

    .line 267
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkG;LkT;)Z

    .line 268
    const-string v0, "docListCollectionName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    invoke-static {p0, v2, v1, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;LkM;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    goto :goto_52

    .line 274
    :cond_8d
    sget-object v0, LpQ;->b:LpQ;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;)V

    goto :goto_52

    .line 279
    :cond_93
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkR;Landroid/os/Bundle;)LalU;

    move-result-object v2

    .line 280
    new-instance v3, LeH;

    invoke-direct {v3, p0, v0, v1}, LeH;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LkG;LkR;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, LalO;->a(LalU;LalN;Ljava/util/concurrent/Executor;)V

    goto :goto_52

    .line 314
    :cond_a6
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 315
    const-class v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/content/Intent;)V

    goto :goto_52
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->h()V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_15

    .line 593
    const-string v1, "uri"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    :cond_15
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    if-nez v1, :cond_6

    .line 445
    :goto_5
    return-void

    .line 435
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    invoke-interface {v1}, LnQ;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 436
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->showDialog(I)V

    goto :goto_5

    .line 441
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    invoke-interface {v1, v0}, LnQ;->a(I)I

    move-result v0

    .line 442
    if-gez v0, :cond_12

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    goto :goto_5
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_37

    move v0, v1

    :goto_7
    invoke-static {v0}, LafQ;->b(Z)V

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_39

    :goto_e
    invoke-static {v1}, LafQ;->b(Z)V

    .line 501
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, LkR;->a()Lld;

    move-result-object v1

    .line 506
    if-eqz v0, :cond_36

    invoke-virtual {v0}, LkR;->g()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 508
    invoke-virtual {v0}, LkR;->m()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 509
    invoke-direct {p0, p0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/content/Context;Lld;)V

    .line 514
    :cond_36
    :goto_36
    return-void

    :cond_37
    move v0, v2

    .line 497
    goto :goto_7

    :cond_39
    move v1, v2

    .line 498
    goto :goto_e

    .line 511
    :cond_3b
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LVj;

    invoke-interface {v1, p0, v0}, LVj;->a(Landroid/content/Context;LkR;)V

    goto :goto_36
.end method

.method private h()V
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/Runnable;

    .line 639
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 599
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "in startIntent"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v0, LeK;

    invoke-direct {v0, p0, p1}, LeK;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 614
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "in startIntent with Runnable"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, LeL;

    invoke-direct {v0, p0, p2, p1}, LeL;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Ljava/lang/Runnable;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method public a(LpQ;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 672
    const-string v0, "DocumentOpenerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Landroid/os/Handler;

    new-instance v1, LeM;

    invoke-direct {v1, p0, p1}, LeM;-><init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    .line 349
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b(Landroid/content/Intent;)V

    .line 350
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->f()V

    .line 351
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 574
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 581
    if-nez p1, :cond_20

    .line 582
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 583
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->g()V

    .line 585
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    .line 587
    :cond_20
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 646
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    .line 647
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 173
    const-string v0, "DocumentOpenerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LdE;

    const-string v2, "/documentOpened"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 179
    if-nez p1, :cond_39

    .line 180
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b(Landroid/content/Intent;)V

    .line 191
    :goto_38
    return-void

    .line 182
    :cond_39
    const-string v0, "IsViewerStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->i:Z

    .line 183
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->i:Z

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a()Lx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a(Lx;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 185
    :cond_4f
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    .line 186
    const-string v0, "resourceId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    goto :goto_38

    .line 188
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    goto :goto_38
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 476
    packed-switch p1, :pswitch_data_20

    .line 486
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 478
    :pswitch_b
    new-instance v0, Lnc;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a()Lans;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lnc;-><init>(Lans;Landroid/content/Context;I)V

    .line 481
    invoke-virtual {v0, v2}, Lnc;->setCancelable(Z)V

    .line 482
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnc;->setCanceledOnTouchOutside(Z)V

    .line 483
    invoke-virtual {v0, p0}, Lnc;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_a

    .line 476
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 219
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->h()V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 224
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 225
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->setIntent(Landroid/content/Intent;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 450
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 451
    packed-switch p1, :pswitch_data_3e

    .line 471
    :goto_b
    return-void

    .line 453
    :pswitch_c
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "in onPrepareDialog PROGRESS_SPINNER"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    check-cast p2, Lnc;

    .line 457
    iget v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:I

    if-ltz v0, :cond_1e

    .line 458
    iget v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:I

    invoke-virtual {p2, v0}, Lnc;->setIcon(I)V

    .line 460
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    if-eqz v0, :cond_3a

    .line 461
    invoke-virtual {p2}, Lnc;->b()V

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    invoke-virtual {p2, v0}, Lnc;->a(LnQ;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    invoke-interface {v0}, LnQ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnc;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p2}, Lnc;->a()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LnQ;

    goto :goto_b

    .line 467
    :cond_3a
    invoke-virtual {p2}, Lnc;->dismiss()V

    goto :goto_b

    .line 451
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 204
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 206
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    .line 215
    :cond_16
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    const-string v0, "IsViewerStarted"

    iget-boolean v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "resourceId"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 493
    const/4 v0, 0x0

    return v0
.end method
