.class final Lcom/sdgtl/mediahub/spr/screen/nc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/nc;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    const/4 v2, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_dc

    :goto_f
    return-void

    :pswitch_10
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->t:Lcom/sdgtl/mediahub/spr/ar;

    const/16 v3, 0xa

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_f

    :pswitch_1f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_36

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->v:Lcom/sdgtl/mediahub/spr/ar;

    const/16 v3, 0xb

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_f

    :cond_36
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/nd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/nd;-><init>(Lcom/sdgtl/mediahub/spr/screen/nc;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v3

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/ne;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/screen/ne;-><init>(Lcom/sdgtl/mediahub/spr/screen/nc;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/nf;

    invoke-direct {v4, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/nf;-><init>(Lcom/sdgtl/mediahub/spr/screen/nc;Landroid/widget/EditText;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const v4, 0x7f0a0044

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v4, Lcom/sdgtl/mediahub/spr/screen/ng;

    invoke-direct {v4, p0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/ng;-><init>(Lcom/sdgtl/mediahub/spr/screen/nc;Landroid/widget/EditText;Lcom/sdgtl/mediahub/spr/contentProvider/b;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/nh;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/nh;-><init>(Lcom/sdgtl/mediahub/spr/screen/nc;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nc;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_f

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method
