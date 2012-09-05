.class public Lcom/sdgtl/mediahub/spr/common/SignInFlow;
.super Landroid/app/Activity;


# static fields
.field private static synthetic X:[I

.field private static v:Z


# instance fields
.field private A:Lcom/sdgtl/mediahub/spr/common/gj;

.field private B:Lcom/sdgtl/mediahub/spr/common/gi;

.field private C:Landroid/app/NotificationManager;

.field private D:Landroid/app/Notification;

.field private E:Landroid/widget/RemoteViews;

.field private F:Landroid/widget/LinearLayout;

.field private G:Lcom/sdgtl/mediahub/spr/common/cw;

.field private H:Landroid/app/ProgressDialog;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Landroid/content/pm/PackageInfo;

.field private S:Landroid/content/pm/PackageInfo;

.field private T:Landroid/content/pm/PackageInfo;

.field private U:Z

.field private V:Ljava/util/Timer;

.field private W:Landroid/content/BroadcastReceiver;

.field public final a:Landroid/os/Handler;

.field public b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/os/Handler;

.field private l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/sdgtl/mediahub/spr/common/ei;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->m:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->w:Z

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B:Lcom/sdgtl/mediahub/spr/common/gi;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->G:Lcom/sdgtl/mediahub/spr/common/cw;

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->I:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->J:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->K:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->L:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->M:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->N:Z

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->R:Landroid/content/pm/PackageInfo;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->S:Landroid/content/pm/PackageInfo;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->U:Z

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ft;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/ft;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fz;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ga;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/ga;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/gb;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/gc;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gd;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/gd;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ge;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/ge;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/gg;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gh;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/gh;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fu;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fu;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->j:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fw;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fw;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->k:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fx;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fx;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->W:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B:Lcom/sdgtl/mediahub/spr/common/gi;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->t:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/app/Notification;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->D:Landroid/app/Notification;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->H:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/widget/RemoteViews;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->E:Landroid/widget/RemoteViews;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->G:Lcom/sdgtl/mediahub/spr/common/cw;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/ei;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->z:Lcom/sdgtl/mediahub/spr/common/ei;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B:Lcom/sdgtl/mediahub/spr/common/gi;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->U:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v:Z

    return v0
.end method

.method private b()V
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->I:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.singin.mediahub.Remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->sendBroadcast(Landroid/content/Intent;)V

    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->u:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->H:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, "MediaHubSignIn"

    const-string v1, "S******_A****** Start !!!! bRequestAuthcode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_40

    const-string v1, "com.osp.app.signin.mediahub"

    const-string v2, "com.osp.app.signin.mediahub.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_18
    const-string v1, "client_id"

    const-string v2, "gtd83co8hu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, "CF38652EA49C5D9D28162BBBB284890C"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/gj;->b:Lcom/sdgtl/mediahub/spr/common/gj;

    if-ne v1, v2, :cond_54

    const-string v1, "account_mode"

    const-string v2, "REQUEST_AUTHCODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3a
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->w:Z

    invoke-virtual {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_40
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->S:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4c

    const-string v1, "com.osp.app.signin.alternative"

    const-string v2, "com.osp.app.signin.alternative.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_18

    :cond_4c
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_18

    :cond_54
    const-string v1, "account_mode"

    const-string v2, "ACCOUNT_VERIFY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3a
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->s:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->G:Lcom/sdgtl/mediahub/spr/common/cw;

    return-object v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->H:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->H:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->p:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->o:J

    return-void
.end method

.method private static synthetic e()[I
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->X:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gj;->values()[Lcom/sdgtl/mediahub/spr/common/gj;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->b:Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/gj;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->a:Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/gj;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/gj;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->X:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d()V

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->n:J

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->z:Lcom/sdgtl/mediahub/spr/common/ei;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r:J

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->q:J

    return-void
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/content/pm/PackageInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->m:Z

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->n:J

    return-wide v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->o:J

    return-wide v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->U:Z

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->s:J

    return-wide v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->t:J

    return-wide v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->u:J

    return-wide v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->q:J

    return-wide v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->J:Z

    return v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->p:J

    return-wide v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->E:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->D:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->C:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const v7, 0x7f0a019f

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sput-boolean v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v:Z

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->w:Z

    if-ne p1, v5, :cond_1f4

    const-string v0, "MediaHubSignIn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.p******.a**.a******  onActivityResult resultCode == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_266

    :cond_27
    :goto_27
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_3d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :pswitch_43
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fy;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fy;-><init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_a6

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    const-string v1, "MediaHubSignIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data.getStringExtra(Constant.PROFILEMANAGER_GET_EXTRA_ACCOUNT) == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubSignIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentAccountFromAccountManager == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    if-nez v1, :cond_d6

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/gj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_27a

    goto/16 :goto_27

    :pswitch_b7
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestSignIn start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xe

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->o:J

    goto/16 :goto_27

    :cond_d6
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->Q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    goto :goto_a6

    :pswitch_fb
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->b:Lcom/sdgtl/mediahub/spr/common/gj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c()V

    goto/16 :goto_27

    :pswitch_104
    const-string v0, "authcode"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    const-string v0, "signUpInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y:Ljava/lang/String;

    if-eqz v0, :cond_12e

    const-string v0, "MediaHubSignIn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSignUpInfo == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    if-eqz v0, :cond_167

    const-string v0, "MediaHubSignIn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAuthCode =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestUserToken Start !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x32

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->n:J

    goto/16 :goto_27

    :cond_167
    const-string v0, "MediaHubSignIn"

    const-string v1, "CASE_NEED_AUTH_CODE  mAuthCode == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_27

    :pswitch_181
    if-eqz p3, :cond_1af

    const-string v0, "passwordBlock"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1af

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_27

    :cond_1af
    const-string v0, "MediaHubSignIn"

    const-string v1, "mSignIn failed !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    :cond_1b9
    :goto_1b9
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_27

    :pswitch_1be
    const-string v0, "MediaHubSignIn"

    const-string v1, "mSignIn cancel !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    goto :goto_1b9

    :pswitch_1c9
    const-string v0, "MediaHubSignIn"

    const-string v1, "mSignIn fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    goto :goto_1b9

    :pswitch_1d7
    const-string v0, "MediaHubSignIn"

    const-string v1, "mSignIn fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_27

    :cond_1f4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_233

    packed-switch p2, :pswitch_data_284

    goto/16 :goto_27

    :pswitch_1fd
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->z:Lcom/sdgtl/mediahub/spr/common/ei;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x19

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->s:J

    goto/16 :goto_27

    :pswitch_21e
    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a00e1

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_27

    :cond_233
    if-ne p1, v3, :cond_27

    if-ne p2, v5, :cond_1b9

    if-eqz p3, :cond_27

    const-string v0, "passwordBlock"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_27

    nop

    :pswitch_data_266
    .packed-switch -0x1
        :pswitch_43
        :pswitch_1be
        :pswitch_181
        :pswitch_1c9
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_104
        :pswitch_fb
    .end packed-switch

    :pswitch_data_284
    .packed-switch 0x1
        :pswitch_1fd
        :pswitch_21e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->I:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->K:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string v3, "go_to_home"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->I:Z

    const-string v3, "action_bar_call"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->J:Z

    const-string v3, "remove_account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->K:Z

    const-string v3, "account_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->L:Z

    const-string v3, "change_password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->M:Z

    const-string v3, "terms_and_conditions"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->N:Z

    :cond_43
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iput-object v9, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B:Lcom/sdgtl/mediahub/spr/common/gi;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.osp.app.signin.mediahub.RemoveResponse"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v10}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setContentView(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->C:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v5, "MediaHubSignIn"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prevSigninS******A****** == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEMAIL:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MediaHubSignIn"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "c******A******FromA******M****** == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEMAIL:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->R:Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->S:Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_118

    const-string v0, "MediaHubSignIn"

    const-string v3, " SIGN_IN_FLOW No Network"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_10e
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    move v0, v1

    :goto_112
    if-nez v0, :cond_117

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c()V

    :cond_117
    return-void

    :cond_118
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_141

    :cond_12c
    const-string v0, "MediaHubSignIn"

    const-string v3, " SIGN_IN_FLOW No shopid or No Channelid"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_10e

    :cond_141
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->R:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_153

    const-string v0, "MediaHubSignIn"

    const-string v2, " SIGN_IN_FLOW S******A****** package Not Fond"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->d(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move v0, v1

    goto :goto_112

    :cond_153
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_17a

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->S:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_17a

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->R:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v4, v1, :cond_17a

    const-string v0, "MediaHubSignIn"

    const-string v2, " SIGN_IN_FLOW S******A****** package Not Fond 2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->T:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_173

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    :cond_173
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->d(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move v0, v1

    goto :goto_112

    :cond_17a
    iget-boolean v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->K:Z

    if-eqz v4, :cond_1a8

    const-string v0, "MediaHubSignIn"

    const-string v3, " SIGN_IN_FLOW S******A****** Removed!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_19b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_19b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->j:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move v0, v1

    goto/16 :goto_112

    :cond_1a8
    iget-boolean v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->L:Z

    if-eqz v4, :cond_1c0

    const-string v0, "MediaHubSignIn"

    const-string v2, " SIGN_IN_FLOW call AccountInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.mediahub.accountinfo"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v10}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    goto/16 :goto_112

    :cond_1c0
    iget-boolean v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->M:Z

    if-eqz v4, :cond_1d7

    const-string v0, "MediaHubSignIn"

    const-string v2, " SIGN_IN_FLOW call ChangePassword"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.mediahub.changepassword"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10e

    :cond_1d7
    iget-boolean v4, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->N:Z

    if-eqz v4, :cond_1ee

    const-string v0, "MediaHubSignIn"

    const-string v2, " SIGN_IN_FLOW call TermsAndConditions"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.mediahub.tncs"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10e

    :cond_1ee
    if-eqz v3, :cond_206

    if-eqz v0, :cond_206

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_206

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22d

    :cond_206
    const-string v0, "MediaHubSignIn"

    const-string v1, " 1.CASE_VERIFY_AND_AUTH_CODE_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    iput-object v9, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    move v0, v2

    goto/16 :goto_112

    :cond_22d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25a

    const-string v0, "MediaHubSignIn"

    const-string v1, " 2.CASE_VERIFY_AND_AUTH_CODE_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    iput-object v9, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->c:Lcom/sdgtl/mediahub/spr/common/gj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    move v0, v2

    goto/16 :goto_112

    :cond_25a
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x()Z

    move-result v0

    if-eqz v0, :cond_286

    const-string v0, "MediaHubSignIn"

    const-string v1, " 3.CASE_ONLY_VERIFY_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->O:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->P:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/gj;->a:Lcom/sdgtl/mediahub/spr/common/gj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A:Lcom/sdgtl/mediahub/spr/common/gj;

    move v0, v2

    goto/16 :goto_112

    :cond_286
    const-string v0, "MediaHubSignIn"

    const-string v2, "NO_CASE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->J:Z

    if-eqz v0, :cond_297

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    goto/16 :goto_10e

    :cond_297
    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    goto/16 :goto_10e
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->V:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->m:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->m:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->w:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
