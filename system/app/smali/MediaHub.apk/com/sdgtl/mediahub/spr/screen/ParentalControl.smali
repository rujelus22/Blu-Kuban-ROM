.class public Lcom/sdgtl/mediahub/spr/screen/ParentalControl;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static j:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/sdgtl/mediahub/spr/screen/mv;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private k:I

.field private l:Landroid/app/ProgressDialog;

.field private m:Lcom/sdgtl/mediahub/spr/download/a;

.field private n:Lcom/sdgtl/mediahub/spr/c/a;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->i:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mn;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mq;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mr;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mr;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->o:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/ParentalControl;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->j:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->k:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->l:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->m:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->k:I

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->m:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->n:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->i:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_17

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_12
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_12

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->i:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    goto :goto_16
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->overridePendingTransition(II)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->i:Z

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    :cond_15
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_e

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->finish()V

    goto :goto_6

    nop

    :pswitch_data_e
    .packed-switch 0x7
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->j:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->setContentView(I)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/it;

    const v2, 0x7f0a0107

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mv;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/mv;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->d:Lcom/sdgtl/mediahub/spr/screen/mv;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->d:Lcom/sdgtl/mediahub/spr/screen/mv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b5

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->g:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->h:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->h:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/mt;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/mt;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->n:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/mu;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/mu;-><init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_aa

    const/4 v0, 0x3

    :cond_aa
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_b5

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_b5
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->m:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->n:Lcom/sdgtl/mediahub/spr/c/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->j:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_f

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_34

    :cond_f
    :goto_f
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :sswitch_14
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_13

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->overridePendingTransition(II)V

    goto :goto_13

    :sswitch_2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->a:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f

    :sswitch_data_34
    .sparse-switch
        0x102002c -> :sswitch_14
        0x7f0d0173 -> :sswitch_2e
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    const v0, 0x7f0d016a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->u(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0d0173

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_20
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->m:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
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
