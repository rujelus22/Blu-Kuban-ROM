.class Lcom/google/googlenav/ui/view/android/t;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/t;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->g(Lcom/google/googlenav/ui/view/android/j;)Lcom/google/googlenav/ui/view/F;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/t;->a:I

    iput v1, v0, Lcom/google/googlenav/ui/view/F;->b:I

    .line 736
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/j;->i:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/j;->i:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->b(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/t;->b:Lcom/google/googlenav/ui/view/android/j;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/j;->m()V

    .line 739
    return-void
.end method
