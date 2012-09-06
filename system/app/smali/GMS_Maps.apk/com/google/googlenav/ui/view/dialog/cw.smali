.class public Lcom/google/googlenav/ui/view/dialog/cw;
.super Lcom/google/googlenav/ui/view/dialog/cn;
.source "SourceFile"


# instance fields
.field private b:Lcom/google/googlenav/bo;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/cn;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 38
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cw;->b:Lcom/google/googlenav/bo;

    .line 39
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 87
    const/16 v0, 0x568

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/cw;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cw;->i()Ljava/lang/String;

    move-result-object v1

    .line 90
    const v0, 0x7f100408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 92
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cw;->b:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_d

    .line 96
    const/16 v0, 0x569

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_c
    return-object v0

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cw;->b:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_1a

    .line 100
    const/16 v0, 0x56a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 104
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cw;->b:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    if-eq v0, v1, :cond_20

    .line 107
    :cond_20
    const/16 v0, 0x56b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/dialog/cw;->a(Landroid/view/View;)V

    .line 47
    const v0, 0x7f10040a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    const v1, 0x7f10040b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    const v2, 0x7f10040c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    const/16 v4, 0x564

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    sget-object v5, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v6, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5, v6}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 55
    const/16 v0, 0x565

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v4, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v4, v5}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 59
    const/16 v0, 0x566

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v4, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f1000a0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const/16 v1, 0x56c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cx;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cx;-><init>(Lcom/google/googlenav/ui/view/dialog/cw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f10041e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    const/16 v1, 0x567

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cy;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cy;-><init>(Lcom/google/googlenav/ui/view/dialog/cw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object v3
.end method
