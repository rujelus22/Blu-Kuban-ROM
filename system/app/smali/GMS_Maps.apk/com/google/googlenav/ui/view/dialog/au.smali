.class public Lcom/google/googlenav/ui/view/dialog/au;
.super Lcom/google/googlenav/ui/view/dialog/at;


# static fields
.field static final synthetic b:Z


# instance fields
.field private final c:Lcom/google/googlenav/bn;

.field private final d:Lcom/google/googlenav/bo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/view/dialog/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/dialog/au;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/bn;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/dialog/at;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/au;->c:Lcom/google/googlenav/bn;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/au;->d:Lcom/google/googlenav/bo;

    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/au;->d:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_d

    const/16 v0, 0x458

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/au;->d:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    if-eq v0, v1, :cond_13

    :cond_13
    const/16 v0, 0x45b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 14

    const/16 v12, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/au;->c:Lcom/google/googlenav/bn;

    iget v7, v0, Lcom/google/googlenav/bn;->g:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/au;->c:Lcom/google/googlenav/bn;

    iget v8, v0, Lcom/google/googlenav/bn;->h:I

    sget-boolean v0, Lcom/google/googlenav/ui/view/dialog/au;->b:Z

    if-nez v0, :cond_18

    add-int v0, v7, v8

    if-gtz v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/au;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030144

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0f037c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f037a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f037b

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f037d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f037e

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f0385

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0386

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v10, 0x464

    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/googlenav/ui/view/dialog/au;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/au;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v10, v11}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x459

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x45a

    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v0, v10}, Lcom/google/googlenav/ui/wizard/hp;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_137

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_92
    const/16 v0, 0x456

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x457

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/google/googlenav/ui/wizard/hp;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13e

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ab
    const/16 v0, 0x453

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/google/googlenav/ui/view/dialog/au;->c:Lcom/google/googlenav/bn;

    iget-object v7, v7, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x463

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const v0, 0x7f0f037f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v0, 0x455

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v5, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/16 v0, 0x454

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v6, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/au;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/16 v1, 0x461

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.google.com/local"

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/googlenav/ui/wizard/hp;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f0387

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f0388

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x452

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x462

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/av;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/av;-><init>(Lcom/google/googlenav/ui/view/dialog/au;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aw;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aw;-><init>(Lcom/google/googlenav/ui/view/dialog/au;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v9

    :cond_137
    sget-object v7, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v7}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    goto/16 :goto_92

    :cond_13e
    sget-object v1, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    goto/16 :goto_ab
.end method
