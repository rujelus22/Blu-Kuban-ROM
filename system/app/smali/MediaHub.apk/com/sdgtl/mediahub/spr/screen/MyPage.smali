.class public Lcom/sdgtl/mediahub/spr/screen/MyPage;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static j:Lcom/sdgtl/mediahub/spr/screen/MyPage;

.field private static n:Ljava/util/ArrayList;

.field private static p:Z


# instance fields
.field a:Landroid/app/ProgressDialog;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field private e:Lcom/sdgtl/mediahub/spr/screen/iu;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/ArrayList;

.field private k:I

.field private l:Lcom/sdgtl/mediahub/spr/download/a;

.field private m:Lcom/sdgtl/mediahub/spr/c/a;

.field private o:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->j:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ik;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ik;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/in;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/in;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/io;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/io;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/iq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/iq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->l:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPage;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->j:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    :cond_12
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    packed-switch p1, :pswitch_data_52

    :goto_b
    return-void

    :pswitch_c
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_12
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_18
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_1e
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_24
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :cond_2a
    packed-switch p1, :pswitch_data_60

    goto :goto_b

    :pswitch_2e
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_34
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_3a
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_40
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_46
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_b

    :pswitch_4c
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_4c
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPage;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->k:I

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPage;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->k:I

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cr;

    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cr;

    const v2, 0x7f0a00a0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cr;

    const v2, 0x7f0a00a1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cr;

    const v2, 0x7f0a00a2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cr;

    const v2, 0x7f0a00a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    return-object v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(I)V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->l:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->m:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/screen/iu;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->e:Lcom/sdgtl/mediahub/spr/screen/iu;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->o:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_12

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_12
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->overridePendingTransition(II)V

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    :cond_10
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_24

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    packed-switch p2, :pswitch_data_2e

    goto :goto_6

    :pswitch_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_19
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    goto :goto_6

    :sswitch_1d
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    goto :goto_6

    nop

    :sswitch_data_24
    .sparse-switch
        0x3 -> :sswitch_7
        0x7 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_19
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->setTitle(I)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->j:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->l:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->m:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_c3

    sput-boolean v5, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2e
    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    :cond_31
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->m:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iput-boolean v6, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    :cond_41
    :goto_41
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->setContentView(I)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f:Landroid/widget/ListView;

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->g:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->h:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_73
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->h:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ir;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ir;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_171

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v7}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->o:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->o:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f:Landroid/widget/ListView;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/b/b;->a()I

    move-result v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/b/b;->b()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    :goto_a0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/is;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/is;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    return-void

    :cond_c3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a00a0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00a5

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a00a1

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00a6

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a00a2

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00a7

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->u(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/it;

    const v3, 0x7f0a00a3

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a00a8

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a00a4

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00a9

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_16a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->h:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_73

    :cond_171
    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/iu;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->i:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/iu;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->e:Lcom/sdgtl/mediahub/spr/screen/iu;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->e:Lcom/sdgtl/mediahub/spr/screen/iu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_a0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->j:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0160"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x7f0d016a
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->l:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_23

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->p:Z

    goto :goto_12

    :cond_23
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_12

    :cond_3a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_12

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->o:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    move v1, v0

    :goto_53
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_67

    :cond_5b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_63

    add-int/lit8 v1, v1, 0x1

    :cond_63
    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(I)V

    goto :goto_12

    :cond_67
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    if-nez v0, :cond_5b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53
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
