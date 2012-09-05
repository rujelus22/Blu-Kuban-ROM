.class public Lcom/google/googlenav/ui/wizard/dm;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/dq;

.field private final b:Z

.field private c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private d:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/Button;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/ui/p;)V
    .registers 4

    const v0, 0x7f0d001b

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dm;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dm;)Lcom/google/googlenav/ui/wizard/dq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->a:Lcom/google/googlenav/ui/wizard/dq;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 6

    const/4 v3, 0x1

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dm;->b:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dm;->a:Lcom/google/googlenav/ui/wizard/dq;

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const v0, 0x7f0f0008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->d:Landroid/widget/TextView;

    const/16 v2, 0x201

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_33
    const v0, 0x7f0f007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->k:Landroid/widget/TextView;

    const v0, 0x7f0f007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->l:Landroid/widget/TextView;

    const v0, 0x7f0f0084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    const/16 v2, 0xae

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dn;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dn;-><init>(Lcom/google/googlenav/ui/wizard/dm;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0085

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    const/16 v2, 0xaf

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/do;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/do;-><init>(Lcom/google/googlenav/ui/wizard/dm;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dm;->b:Z

    if-eqz v0, :cond_ad

    const v0, 0x7f0f026a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->o:Landroid/widget/Button;

    const/16 v2, 0xb5

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->o:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dp;-><init>(Lcom/google/googlenav/ui/wizard/dm;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ad
    return-object v1

    :cond_ae
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_33
.end method

.method protected g()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x201

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dm;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method h()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method i()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dm;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
