.class Lcom/google/googlenav/ui/view/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/r;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/l;->b:Lcom/google/googlenav/ui/view/android/j;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/l;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/l;->b:Lcom/google/googlenav/ui/view/android/j;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 757
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/l;->b:Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/l;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->c(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V

    .line 759
    :cond_f
    return-void
.end method
