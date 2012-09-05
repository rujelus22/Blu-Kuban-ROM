.class public final Lcom/coremobility/app/customui/b;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/coremobility/app/customui/CM_Button;

.field e:Lcom/coremobility/app/customui/CM_Button;

.field f:Lcom/coremobility/app/customui/CM_Button;

.field g:Lcom/coremobility/app/customui/CM_Button;

.field h:Landroid/widget/CheckBox;

.field i:Landroid/content/DialogInterface$OnClickListener;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field k:Landroid/content/DialogInterface$OnClickListener;

.field l:Landroid/content/DialogInterface$OnClickListener;

.field m:Landroid/view/View;

.field n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coremobility/app/customui/b;->n:Landroid/content/Context;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_Button;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/customui/b;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/b;->setView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_27

    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    :cond_14
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/coremobility/app/customui/b;->j:Landroid/content/DialogInterface$OnClickListener;

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    goto :goto_26
.end method

.method private b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_27

    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    :cond_14
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/coremobility/app/customui/b;->k:Landroid/content/DialogInterface$OnClickListener;

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    goto :goto_26
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->m:Landroid/view/View;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 9

    const v3, 0x7f020006

    const/16 v2, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_64

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_2d

    if-eqz p4, :cond_1b

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p2}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/coremobility/app/customui/b;->i:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_9

    :cond_2d
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    goto :goto_9

    :pswitch_33
    invoke-direct {p0, p2, p3, p4}, Lcom/coremobility/app/customui/b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_9

    :pswitch_37
    invoke-direct {p0, p2, p3, p4}, Lcom/coremobility/app/customui/b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_9

    :pswitch_3b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    if-eqz v0, :cond_5e

    if-eqz p4, :cond_4c

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_Button;->setBackgroundResource(I)V

    :cond_4c
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p2}, Lcom/coremobility/app/customui/CM_Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/coremobility/app/customui/b;->l:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_9

    :cond_5e
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_Button;->setVisibility(I)V

    goto :goto_9

    :pswitch_data_64
    .packed-switch -0x3
        :pswitch_33
        :pswitch_37
        :pswitch_a
        :pswitch_9
        :pswitch_3b
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->d:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->i:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/b;->dismiss()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->e:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x3

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/b;->dismiss()V

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->f:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/b;->dismiss()V

    goto :goto_d

    :cond_2a
    iget-object v0, p0, Lcom/coremobility/app/customui/b;->g:Lcom/coremobility/app/customui/CM_Button;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/coremobility/app/customui/b;->dismiss()V

    goto :goto_d
.end method

.method public final setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coremobility/app/customui/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coremobility/app/customui/b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coremobility/app/customui/b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/customui/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
