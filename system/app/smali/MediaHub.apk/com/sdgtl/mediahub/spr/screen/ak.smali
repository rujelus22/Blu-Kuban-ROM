.class final Lcom/sdgtl/mediahub/spr/screen/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ak;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ak;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ak;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->V(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ak;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
