.class public Lcom/google/googlenav/ui/wizard/dX;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/eb;

.field private final b:Z

.field private c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f0f001a

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 62
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dX;->b:Z

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dX;)Lcom/google/googlenav/ui/wizard/eb;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->a:Lcom/google/googlenav/ui/wizard/eb;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    const/16 v0, 0x232

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dX;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_f
    return-void
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dX;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 85
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 145
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 153
    if-eqz p1, :cond_4d

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setHidden()V

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 162
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dX;->b:Z

    if-eqz v0, :cond_4d

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :cond_4d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/eb;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dX;->a:Lcom/google/googlenav/ui/wizard/eb;

    .line 70
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    const v0, 0x7f100087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    .line 100
    const v0, 0x7f100039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->d:Landroid/widget/TextView;

    .line 101
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->d:Landroid/widget/TextView;

    const/16 v2, 0x232

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_33
    const v0, 0x7f1000aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->e:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f1000ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->m:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f1000b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    const/16 v2, 0xb8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dY;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dY;-><init>(Lcom/google/googlenav/ui/wizard/dX;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f1000b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    const/16 v2, 0xb9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dZ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dZ;-><init>(Lcom/google/googlenav/ui/wizard/dX;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dX;->b:Z

    if-eqz v0, :cond_ad

    .line 128
    const v0, 0x7f1002d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->p:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->p:Landroid/widget/Button;

    const/16 v2, 0xbf

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->p:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ea;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ea;-><init>(Lcom/google/googlenav/ui/wizard/dX;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_ad
    return-object v1

    .line 104
    :cond_ae
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_33
.end method

.method i()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method l()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dX;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
