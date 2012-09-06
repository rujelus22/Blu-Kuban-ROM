.class public Lcom/google/googlenav/ui/view/android/U;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/googlenav/ui/view/c;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 21
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/U;->a:Lcom/google/googlenav/ui/view/c;

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    return-void
.end method

.method public f()[I
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/U;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/U;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->a:Lcom/google/googlenav/ui/view/c;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->a:Lcom/google/googlenav/ui/view/c;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/c;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 38
    :cond_9
    return-void
.end method
