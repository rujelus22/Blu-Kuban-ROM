.class Lcom/google/googlenav/ui/view/dialog/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bE;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:LaM/i;

.field final synthetic d:Lcom/google/googlenav/ui/view/dialog/bh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bh;Lcom/google/googlenav/ui/view/android/bE;Landroid/view/ViewGroup;LaM/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bi;->d:Lcom/google/googlenav/ui/view/dialog/bh;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bi;->a:Lcom/google/googlenav/ui/view/android/bE;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bi;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/bi;->c:LaM/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bi;->a:Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bi;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bj;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bj;-><init>(Lcom/google/googlenav/ui/view/dialog/bi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method
