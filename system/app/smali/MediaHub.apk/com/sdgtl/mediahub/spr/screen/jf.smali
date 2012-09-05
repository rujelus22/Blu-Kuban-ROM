.class final Lcom/sdgtl/mediahub/spr/screen/jf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/jf;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->t:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b()V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->v:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    :goto_21
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b()V

    goto :goto_10

    :cond_27
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->I(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jg;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/jg;-><init>(Lcom/sdgtl/mediahub/spr/screen/jf;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v3

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/jh;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/screen/jh;-><init>(Lcom/sdgtl/mediahub/spr/screen/jf;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/ji;

    invoke-direct {v4, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/ji;-><init>(Lcom/sdgtl/mediahub/spr/screen/jf;Landroid/widget/EditText;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const v4, 0x7f0a0044

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/jj;

    invoke-direct {v4, p0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/jj;-><init>(Lcom/sdgtl/mediahub/spr/screen/jf;Landroid/widget/EditText;Lcom/sdgtl/mediahub/spr/contentProvider/b;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/jk;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/jk;-><init>(Lcom/sdgtl/mediahub/spr/screen/jf;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->J(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->J(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_21
.end method
