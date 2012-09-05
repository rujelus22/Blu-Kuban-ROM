.class final Lcom/sdgtl/mediahub/spr/screen/jj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/jf;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Lcom/sdgtl/mediahub/spr/contentProvider/b;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/jf;Landroid/widget/EditText;Lcom/sdgtl/mediahub/spr/contentProvider/b;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_1a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a01ab

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->g:Lcom/sdgtl/mediahub/spr/screen/ke;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/screen/ke;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->K(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_2c

    :cond_5d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->L(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "redeem_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/jf;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jj;->c:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x14

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    goto :goto_2c
.end method
