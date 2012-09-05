.class public Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;
.super Landroid/app/Activity;


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field private e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/LinearLayout;

.field private j:Z

.field private k:Z

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->k:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fm;-><init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fn;-><init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fo;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fo;-><init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fp;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fp;-><init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fq;-><init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->d:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->h:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "notice_message"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->h:Ljava/lang/String;

    :goto_28
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->finish()V

    return-void

    :cond_2c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->setResult(I)V

    goto :goto_28
.end method

.method static synthetic a(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_13

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_a

    :cond_13
    if-nez p1, :cond_a

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_a
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->g:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "downloading_notification_id"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    if-eqz v3, :cond_2a

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "downloading_notification_id"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    new-instance v3, Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_45

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/land/SDCardUnmountLand;

    :goto_34
    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x2400

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_44
    :goto_44
    return v1

    :cond_45
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    goto :goto_34

    :cond_48
    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c()Z

    move-result v0

    if-nez v0, :cond_8f

    if-eqz p1, :cond_85

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    :goto_53
    if-eqz v3, :cond_6f

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "downloading_notification_id"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    move v0, v1

    :goto_70
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->i()Z

    move-result v2

    if-nez v2, :cond_8d

    if-eqz p2, :cond_89

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    :goto_7b
    if-nez v1, :cond_44

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->J:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {p0, v0, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_44

    :cond_85
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    goto :goto_53

    :cond_89
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    goto :goto_7b

    :cond_8d
    move v1, v0

    goto :goto_7b

    :cond_8f
    move v0, v2

    goto :goto_70
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_9
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->i()Z

    move-result v3

    if-nez v3, :cond_10

    move v0, v1

    :cond_10
    if-eqz v0, :cond_32

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->c()Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->d()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_1e
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->f:J

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->k:Z

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->k:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a()V

    goto :goto_32

    :cond_3b
    move v0, v2

    goto :goto_9
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->f:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->g:J

    return-wide v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->i:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    const/16 v0, 0x38

    :goto_3f
    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_49

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_49
    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->setResult(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->k:Z

    return-void

    :cond_4f
    const/16 v0, 0x26

    goto :goto_3f
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->j:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->j:Z

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b()V

    return-void
.end method
