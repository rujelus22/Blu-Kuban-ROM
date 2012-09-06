.class public Lcom/google/googlenav/ui/view/dialog/cj;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/iK;

.field private b:Landroid/widget/EditText;

.field private final c:Lcom/google/googlenav/ui/wizard/iS;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/iK;Lcom/google/googlenav/ui/wizard/iS;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cj;->a:Lcom/google/googlenav/ui/wizard/iK;

    .line 37
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cj;->c:Lcom/google/googlenav/ui/wizard/iS;

    .line 38
    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/dialog/cj;->d:Z

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cj;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/cj;)Lcom/google/googlenav/ui/wizard/iK;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->a:Lcom/google/googlenav/ui/wizard/iK;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 45
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 46
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cj;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    :goto_10
    return-void

    .line 48
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->c:Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iS;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cj;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 54
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cj;->requestWindowFeature(I)Z

    .line 57
    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const v1, 0x7f100031

    const v2, 0x7f100030

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04017d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 65
    const v0, 0x7f100025

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/cj;->c:Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/iS;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_2e
    const v0, 0x7f1003f7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->b:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->b:Landroid/widget/EditText;

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/ck;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/dialog/ck;-><init>(Lcom/google/googlenav/ui/view/dialog/cj;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    const v0, 0x7f100217

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x7b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/cj;->d:Z

    if-eqz v0, :cond_6b

    .line 86
    const v0, 0x7f1003f8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_6b
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_ba

    move v0, v1

    .line 92
    :goto_72
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 95
    :goto_78
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    const/16 v1, 0x7c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cl;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cl;-><init>(Lcom/google/googlenav/ui/view/dialog/cj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cm;-><init>(Lcom/google/googlenav/ui/view/dialog/cj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    const v0, 0x7f10002e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcom/google/googlenav/friend/af;->u()V

    .line 120
    return-object v3

    :cond_ba
    move v0, v2

    .line 91
    goto :goto_72

    :cond_bc
    move v2, v1

    .line 92
    goto :goto_78
.end method
