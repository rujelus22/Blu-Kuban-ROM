.class final Lcom/sdgtl/mediahub/spr/screen/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/jf;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/jf;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ji;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/ji;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ji;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ji;->a:Lcom/sdgtl/mediahub/spr/screen/jf;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/jf;->a(Lcom/sdgtl/mediahub/spr/screen/jf;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ji;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
