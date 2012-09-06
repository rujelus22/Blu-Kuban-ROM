.class public Lcom/google/googlenav/ui/wizard/cu;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ct;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ct;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cu;->a:Lcom/google/googlenav/ui/wizard/ct;

    .line 49
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 51
    return-void

    .line 49
    :cond_13
    const v0, 0x7f0f0018

    goto :goto_f
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cu;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/view/android/bb;

    const/16 v2, 0x1d4

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f1001f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const/16 v2, 0x1d3

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f1000bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    const/16 v2, 0x1d1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f1001f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plusone/widgets/ActionButton;

    .line 71
    const/16 v2, 0x1d2

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v2, Lcom/google/googlenav/ui/wizard/cv;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cv;-><init>(Lcom/google/googlenav/ui/wizard/cu;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object v1
.end method
