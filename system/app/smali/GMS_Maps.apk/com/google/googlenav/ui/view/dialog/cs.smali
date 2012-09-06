.class public Lcom/google/googlenav/ui/view/dialog/cs;
.super Lcom/google/googlenav/ui/view/dialog/cn;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/cn;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 34
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cs;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040191

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    const v0, 0x7f100408

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    const v1, 0x7f100417

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    const/16 v3, 0x576

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ui/view/dialog/cs;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 44
    const/16 v3, 0x577

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 46
    const/16 v0, 0x556

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 50
    const v0, 0x7f100169

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    const/16 v1, 0x555

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ct;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ct;-><init>(Lcom/google/googlenav/ui/view/dialog/cs;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-object v2
.end method
