.class public Lcom/google/googlenav/ui/view/dialog/aO;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/aS;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 47
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aS;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aO;)Lcom/google/googlenav/ui/view/dialog/aS;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aS;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aO;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aO;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    const v0, 0x7f100039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    if-eqz v0, :cond_96

    .line 61
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aO;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1f
    const/16 v0, 0x27f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/K;->ad()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/K;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const v0, 0x7f1002d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 79
    const v0, 0x7f1002d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    const/16 v2, 0x29a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aP;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/aP;-><init>(Lcom/google/googlenav/ui/view/dialog/aO;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aQ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/aQ;-><init>(Lcom/google/googlenav/ui/view/dialog/aO;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aR;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aR;-><init>(Lcom/google/googlenav/ui/view/dialog/aO;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aO;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 110
    return-object v1

    .line 63
    :cond_96
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aO;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aO;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x276

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
