.class final Lcom/sdgtl/mediahub/spr/screen/jo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le v0, v4, :cond_b7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ke;->e:Lcom/sdgtl/mediahub/spr/screen/ke;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/screen/ke;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_4c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V

    :goto_5f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_78
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_payment_method_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "card_nick_name"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x13

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    goto :goto_4c

    :cond_b7
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->b:I

    if-ne v0, v4, :cond_ce

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a01a8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5f

    :cond_ce
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/jo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5f
.end method
