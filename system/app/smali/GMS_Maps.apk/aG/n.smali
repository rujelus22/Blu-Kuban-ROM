.class public Lag/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/a;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/by;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/googlenav/ui/view/android/by;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/ui/view/android/by;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/by;->show()V

    .line 31
    return-void
.end method

.method public a(Lag/d;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/by;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/by;->a(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/by;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lag/n;->a:Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/by;->dismiss()V

    .line 41
    return-void
.end method
