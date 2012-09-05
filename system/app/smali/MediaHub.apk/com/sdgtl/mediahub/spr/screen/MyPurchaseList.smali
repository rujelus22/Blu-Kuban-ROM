.class public Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static j:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# instance fields
.field private A:I

.field private B:Landroid/app/ProgressDialog;

.field private C:Lcom/sdgtl/mediahub/spr/download/a;

.field private D:Lcom/sdgtl/mediahub/spr/c/a;

.field private E:Landroid/widget/AbsListView$OnScrollListener;

.field private F:Landroid/view/View$OnTouchListener;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Landroid/content/BroadcastReceiver;

.field public a:Ljava/util/ArrayList;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field private h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private i:J

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcom/sdgtl/mediahub/spr/screen/md;

.field private r:Z

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/Button;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->j:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->k:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->r:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->s:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->z:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ln;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ln;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->E:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ls;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ls;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->F:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lt;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lt;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lw;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lw;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lx;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lx;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->G:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lz;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ma;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ma;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mb;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lo;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lo;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->H:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->v:I

    return v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->j:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_10
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;F)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->s:F

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->A:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f

    :cond_18
    if-nez p1, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->i:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->B:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->r:Z

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->v:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->s:F

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->t:I

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q:Lcom/sdgtl/mediahub/spr/screen/md;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->u:I

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->t:I

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->u:I

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->B:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->C:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->A:I

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->C:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->D:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->k:Z

    return v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->i:J

    return-wide v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    return-void
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_11

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p:Landroid/widget/RelativeLayout;

    :cond_11
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->z:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_28

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_23
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17

    :cond_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->z:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    goto :goto_17
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->overridePendingTransition(II)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->z:Z

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    :cond_15
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_52

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    packed-switch p2, :pswitch_data_5c

    goto :goto_6

    :pswitch_b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "start_num"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_num"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x21

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->i:J

    goto :goto_6

    :pswitch_48
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->finish()V

    goto :goto_6

    :sswitch_4c
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->finish()V

    goto :goto_6

    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_7
        0x7 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_48
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->setTitle(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->j:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->t:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->u:I

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->setContentView(I)V

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_39
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/md;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/md;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q:Lcom/sdgtl/mediahub/spr/screen/md;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q:Lcom/sdgtl/mediahub/spr/screen/md;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->F:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o:Landroid/widget/ListView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/lp;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/lp;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_da

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->x:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->y:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->y:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_91
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->y:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/lq;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/lq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->D:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0, v0, v4, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/lr;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/lr;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_cf

    move v0, v1

    :cond_cf
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_da

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->w:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_da
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->C:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->D:Lcom/sdgtl/mediahub/spr/c/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_fc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->y:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_91
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_11
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_16
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_11
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->j:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :goto_9
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :sswitch_e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->overridePendingTransition(II)V

    goto :goto_d

    :sswitch_28
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_9

    :sswitch_2e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0163"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_9

    :sswitch_data_40
    .sparse-switch
        0x102002c -> :sswitch_e
        0x7f0d016a -> :sswitch_2e
        0x7f0d0173 -> :sswitch_28
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->k:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->u(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0d0173

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->k:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->C:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q:Lcom/sdgtl/mediahub/spr/screen/md;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q:Lcom/sdgtl/mediahub/spr/screen/md;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/md;->notifyDataSetChanged()V

    goto :goto_2a

    :cond_4b
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_69

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "start_num"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_num"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x21

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->i:J

    goto :goto_41
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStop()V

    return-void
.end method
