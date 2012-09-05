.class public Lcom/google/googlenav/ui/view/dialog/aC;
.super Lcom/google/googlenav/ui/view/dialog/at;


# instance fields
.field private final b:Z

.field private c:Lcom/google/googlenav/bo;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/dialog/at;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/dialog/aC;->b:Z

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aC;->c:Lcom/google/googlenav/bo;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->b:Z

    if-eqz v0, :cond_27

    const/16 v0, 0x47a

    :goto_6
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/aC;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->b:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x47b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_18
    const v0, 0x7f0f037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    return-void

    :cond_27
    const/16 v0, 0x476

    goto :goto_6

    :cond_2a
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aC;->h()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_18
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aC;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->b:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->c:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_d

    const/16 v0, 0x477

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->c:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    if-eq v0, v1, :cond_13

    :cond_13
    const/16 v0, 0x478

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aC;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/dialog/aC;->a(Landroid/view/View;)V

    const v0, 0x7f0f0397

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0398

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0399

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v4, 0x472

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4, v5}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x473

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v4}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x474

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/16 v1, 0x479

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.google.com/local"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/ui/wizard/hp;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->b:Z

    if-eqz v0, :cond_78

    const/16 v0, 0x471

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_63
    const v0, 0x7f0f0396

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aD;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aD;-><init>(Lcom/google/googlenav/ui/view/dialog/aC;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_78
    const/16 v0, 0x475

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_63
.end method
