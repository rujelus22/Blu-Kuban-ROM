.class public Lcom/sdgtl/mediahub/spr/screen/Help;
.super Landroid/app/Activity;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field private f:J

.field private g:Z

.field private h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private i:Landroid/app/ProgressDialog;

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->j:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/f;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/f;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/g;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/g;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/h;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/h;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/i;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/i;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/j;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/j;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/Help;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/Help;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->f:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    if-eqz p0, :cond_10

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/Help;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/Help;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/Help;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/Help;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->g:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_e

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/Help;->finish()V

    goto :goto_6

    nop

    :pswitch_data_e
    .packed-switch 0x7
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "help_screen_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->g:Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->j:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->j:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->g:Z

    if-nez v0, :cond_1e

    const-string v0, ""

    const v1, 0x7f0a0068

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->i:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->i:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/l;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/l;-><init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_id"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/Help;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/Help;->f:J

    goto :goto_1e
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
