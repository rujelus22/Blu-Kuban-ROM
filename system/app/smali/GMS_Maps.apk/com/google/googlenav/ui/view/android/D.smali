.class Lcom/google/googlenav/ui/view/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/c;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/c;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    iget v1, p0, Lcom/google/googlenav/ui/view/android/d;->a:I

    const/16 v2, 0x25b

    if-ne v1, v2, :cond_16

    .line 226
    new-instance v0, Lcom/google/googlenav/ui/wizard/A;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/android/c;->b:LaM/bj;

    invoke-virtual {v2}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    .line 229
    :cond_16
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/c;->b:LaM/bj;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget v2, v2, Lcom/google/googlenav/ui/view/android/c;->c:I

    invoke-virtual {v1, v2}, LaM/bj;->b(I)V

    .line 230
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/c;->b:LaM/bj;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/d;->a:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget v3, v3, Lcom/google/googlenav/ui/view/android/c;->c:I

    invoke-virtual {v1, v2, v3, v0}, LaM/bj;->a(IILjava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/c;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3b

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/d;->b:Lcom/google/googlenav/ui/view/android/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 234
    :cond_3b
    return-void
.end method
