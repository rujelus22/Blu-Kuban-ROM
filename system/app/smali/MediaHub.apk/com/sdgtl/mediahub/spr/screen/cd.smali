.class final Lcom/sdgtl/mediahub/spr/screen/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_d6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->d:Lcom/sdgtl/mediahub/spr/screen/db;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/db;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->A(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->B(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_5f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->g(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V

    :goto_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_8b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_uid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->A(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->B(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_nickname"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x18

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V

    goto :goto_5f

    :cond_d6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cd;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/CharSequence;)V

    goto :goto_72
.end method
