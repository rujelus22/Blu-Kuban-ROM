.class Lcom/google/googlenav/ui/view/android/q;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->e(Lcom/google/googlenav/ui/view/android/j;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 466
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/j;->m()V

    .line 468
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/q;->a:Lcom/google/googlenav/ui/view/android/j;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->d(I)V

    .line 469
    return-void
.end method
