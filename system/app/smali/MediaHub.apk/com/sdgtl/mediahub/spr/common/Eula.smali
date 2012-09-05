.class public Lcom/sdgtl/mediahub/spr/common/Eula;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/Eula;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->b:Landroid/widget/Button;

    return-object v0
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

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/Eula;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/Eula;->finish()V

    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "eura_description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->a:Ljava/lang/String;

    :cond_11
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->setContentView(I)V

    const v0, 0x7f0d0061

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0062

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->b:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ew;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/ew;-><init>(Lcom/sdgtl/mediahub/spr/common/Eula;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->c:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ex;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/ex;-><init>(Lcom/sdgtl/mediahub/spr/common/Eula;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ey;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/ey;-><init>(Lcom/sdgtl/mediahub/spr/common/Eula;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/Eula;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ez;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/ez;-><init>(Lcom/sdgtl/mediahub/spr/common/Eula;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
