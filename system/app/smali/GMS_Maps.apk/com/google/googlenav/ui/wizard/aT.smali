.class public Lcom/google/googlenav/ui/wizard/aT;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field a:Lcom/google/googlenav/ui/wizard/aZ;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->f:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    const v0, 0x7f0f008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aZ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aT;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aT;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aT;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aT;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aZ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/aU;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aU;-><init>(Lcom/google/googlenav/ui/wizard/aT;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aZ;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/aV;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aV;-><init>(Lcom/google/googlenav/ui/wizard/aT;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_41
    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/aT;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aT;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V
    .registers 11

    new-instance v0, Lcom/google/googlenav/ui/wizard/aZ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/aZ;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/aZ;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/aZ;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    if-eqz p3, :cond_2c

    :goto_13
    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/aZ;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    if-eqz p4, :cond_33

    :goto_19
    iput-object p4, v0, Lcom/google/googlenav/ui/wizard/aZ;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-boolean p5, v0, Lcom/google/googlenav/ui/wizard/aZ;->e:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-object p6, v0, Lcom/google/googlenav/ui/wizard/aZ;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-boolean p7, v0, Lcom/google/googlenav/ui/wizard/aZ;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-object p8, v0, Lcom/google/googlenav/ui/wizard/aZ;->h:Lcom/google/googlenav/ui/wizard/aX;

    return-void

    :cond_2c
    const/16 v1, 0x2b5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_13

    :cond_33
    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_19
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->h:Lcom/google/googlenav/ui/wizard/aX;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aZ;->h:Lcom/google/googlenav/ui/wizard/aX;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/aX;->c(Z)V

    :cond_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    goto :goto_7

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_1b
.end method


# virtual methods
.method public W_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->o()V

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/aT;->e:I

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/aT;->e:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/google/googlenav/ui/wizard/aT;->b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->l()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V
    .registers 16

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/aT;->b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iput-object v4, v0, Lcom/google/googlenav/ui/wizard/aZ;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->l()V

    return-void
.end method

.method protected b()V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/aT;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->e()Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v1, Lcom/google/googlenav/ui/wizard/aW;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aW;-><init>(Lcom/google/googlenav/ui/wizard/aT;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_7
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/ap;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/aY;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/aY;-><init>(Lcom/google/googlenav/ui/wizard/aT;Lcom/google/googlenav/ui/p;)V

    return-object v0
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/aZ;->h:Lcom/google/googlenav/ui/wizard/aX;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/aX;->a(Z)V

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_b
.end method

.method public o()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aT;->g()V

    return-void
.end method
