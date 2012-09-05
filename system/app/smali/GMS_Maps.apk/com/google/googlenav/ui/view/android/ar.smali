.class public abstract Lcom/google/googlenav/ui/view/android/ar;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/cl;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/p;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Lcom/google/googlenav/ui/p;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected a(Lbd/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v1, 0x0

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    instance-of v0, v0, Lbd/aJ;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/aJ;

    :goto_16
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Lcom/google/googlenav/ui/p;

    invoke-interface {p1, v1, v0}, Lbd/k;->a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V

    return-object p2

    :cond_1f
    move v0, v1

    goto :goto_e

    :cond_21
    move v0, v1

    goto :goto_e

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Landroid/view/LayoutInflater;

    invoke-interface {p1}, Lbd/k;->b()I

    move-result v2

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lbd/k;->a(Landroid/view/View;)Lbd/aJ;

    move-result-object v0

    goto :goto_16
.end method
