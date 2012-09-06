.class Lcom/google/googlenav/ui/view/android/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/widget/RadioButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aR;->b:Lcom/google/googlenav/ui/view/android/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aR;->b:Lcom/google/googlenav/ui/view/android/aL;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aL;->g:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x2cc

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aR;->b:Lcom/google/googlenav/ui/view/android/aL;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/aL;->c(Lcom/google/googlenav/ui/view/android/aL;)Lcom/google/googlenav/aZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 197
    return-void
.end method
