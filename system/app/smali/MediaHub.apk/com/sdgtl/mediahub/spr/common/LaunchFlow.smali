.class public Lcom/sdgtl/mediahub/spr/common/LaunchFlow;
.super Landroid/app/Activity;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field private g:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private h:Lcom/sdgtl/mediahub/spr/c/a;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Lcom/sdgtl/mediahub/spr/common/dh;

.field private o:Landroid/app/ProgressDialog;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/LinearLayout;

.field private s:Lcom/sdgtl/mediahub/spr/common/fj;

.field private t:I

.field private u:Landroid/os/Handler;

.field private v:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n:Lcom/sdgtl/mediahub/spr/common/dh;

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fj;->a:Lcom/sdgtl/mediahub/spr/common/fj;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->s:Lcom/sdgtl/mediahub/spr/common/fj;

    const/4 v0, 0x3

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->t:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fa;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fa;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->u:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fb;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fd;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fd;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fe;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fe;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ff;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/ff;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fg;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fh;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fh;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/fi;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/fi;-><init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n:Lcom/sdgtl/mediahub/spr/common/dh;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;)J

    :cond_18
    :goto_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->finish()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->p:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->p:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    :cond_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n:Lcom/sdgtl/mediahub/spr/common/dh;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;)J

    goto :goto_18
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->t:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V
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
    if-nez p1, :cond_a

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_a
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->k:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/dh;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n:Lcom/sdgtl/mediahub/spr/common/dh;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Lcom/sdgtl/mediahub/spr/common/fj;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->s:Lcom/sdgtl/mediahub/spr/common/fj;

    return-void
.end method

.method private b()V
    .registers 2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    :cond_d
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a()Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a()Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->finish()V

    :cond_1a
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a()Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a()Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_27
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b()V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->i:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->l:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->g:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/dh;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->n:Lcom/sdgtl/mediahub/spr/common/dh;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->k:J

    return-wide v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->l:J

    return-wide v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->j:J

    return-wide v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/common/fj;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->s:Lcom/sdgtl/mediahub/spr/common/fj;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->t:I

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_16

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->finish()V

    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_1e

    :goto_6
    return-void

    :pswitch_7
    packed-switch p2, :pswitch_data_24

    goto :goto_6

    :pswitch_b
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sdgtl.mediahub.spr.widget.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    :pswitch_19
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b()V

    goto :goto_6

    nop

    :pswitch_data_1e
    .packed-switch 0x8
        :pswitch_7
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_b
        :pswitch_19
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput v5, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->t:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setContentView(I)V

    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_b2

    const/16 v1, 0x38

    :goto_23
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_41
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->g:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_63

    const-string v1, "device_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->p:Ljava/lang/String;

    const-string v1, "device_old_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->q:Ljava/lang/String;

    :cond_63
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->p:Ljava/lang/String;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->p:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->h:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;)J

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m(Ljava/lang/String;)V

    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a00dd

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a:Landroid/os/Handler;

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_a4
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    :cond_b1
    return-void

    :cond_b2
    const/16 v1, 0x26

    goto/16 :goto_23

    :cond_b6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "04"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->g:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->i:J

    goto :goto_a4
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->m:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->m:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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
