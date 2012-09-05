.class public Law/n;
.super Ljava/lang/Object;

# interfaces
.implements Law/a;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/bC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Law/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bC;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/ui/view/android/bC;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bC;->show()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/bC;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Law/d;)V
    .registers 3

    iget-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/bC;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bC;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Law/n;->a:Lcom/google/googlenav/ui/view/android/bC;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bC;->dismiss()V

    return-void
.end method
