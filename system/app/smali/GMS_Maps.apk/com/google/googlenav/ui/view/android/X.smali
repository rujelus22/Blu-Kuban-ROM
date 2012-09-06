.class public abstract Lcom/google/googlenav/ui/view/android/X;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/cf;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/g;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/g;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->b:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method protected a(LaQ/H;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    if-eqz p2, :cond_21

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1f

    instance-of v0, v0, LaQ/bE;

    if-eqz v0, :cond_1f

    .line 59
    const/4 v0, 0x1

    .line 74
    :goto_e
    if-eqz v0, :cond_23

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/bE;

    .line 83
    :goto_16
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/g;

    invoke-interface {p1, v1, v0}, LaQ/H;->a(Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 85
    return-object p2

    :cond_1f
    move v0, v1

    .line 63
    goto :goto_e

    :cond_21
    move v0, v1

    .line 68
    goto :goto_e

    .line 77
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->b:Landroid/view/LayoutInflater;

    invoke-interface {p1}, LaQ/H;->c()I

    move-result v2

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-interface {p1, p2}, LaQ/H;->a(Landroid/view/View;)LaQ/bE;

    move-result-object v0

    goto :goto_16
.end method
