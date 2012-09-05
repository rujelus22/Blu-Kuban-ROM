.class public Lcom/sdgtl/mediahub/spr/screen/MyInformation;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;


# instance fields
.field private b:Z

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private e:Lcom/sdgtl/mediahub/spr/c/a;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->h:Z

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyInformation;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->b:Z

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

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->b:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->finish()V

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

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->overridePendingTransition(II)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->b:Z

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->e:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_101

    const-string v1, "from_signin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->h:Z

    :goto_1c
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->setContentView(I)V

    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/df;

    const v2, 0x7f0a003f

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/df;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/df;

    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sdgtl/mediahub/spr/screen/df;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/df;

    const v2, 0x7f0a0041

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sdgtl/mediahub/spr/screen/df;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/df;

    const v2, 0x7f0a0042

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sdgtl/mediahub/spr/screen/df;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/dg;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/dg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Landroid/content/Context;Ljava/util/ArrayList;)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/dc;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/dc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_100

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->f:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->g:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_c2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->g:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/dd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/dd;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->e:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/de;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/de;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_100

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->d:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_100
    return-void

    :cond_101
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->h:Z

    goto/16 :goto_1c

    :cond_105
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c2
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->overridePendingTransition(II)V

    goto :goto_d

    :pswitch_data_28
    .packed-switch 0x102002c
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->h:Z

    if-eqz v0, :cond_27

    :cond_13
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->f:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
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
