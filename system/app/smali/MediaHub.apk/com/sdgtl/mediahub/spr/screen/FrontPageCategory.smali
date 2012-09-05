.class public Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;
.super Landroid/app/Activity;


# static fields
.field private static e:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private f:Z

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->e:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/a;-><init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->e:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    return v0
.end method

.method private b()V
    .registers 3

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->setContentView(I)V

    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/b;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/b;-><init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/c;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/c;-><init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/d;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/d;-><init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->d:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/e;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/e;-><init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_15

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_18

    :goto_6
    return-void

    :pswitch_7
    packed-switch p2, :pswitch_data_1e

    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    goto :goto_6

    :pswitch_11
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_a

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_7
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->c()Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->e()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "0110"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_22
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    goto :goto_13

    :cond_26
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->b()V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->e:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    goto :goto_13
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->e:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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
