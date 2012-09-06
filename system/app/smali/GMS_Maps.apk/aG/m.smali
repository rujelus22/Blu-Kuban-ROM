.class public Lag/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/a;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/ui/view/dialog/q;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->show()V

    .line 26
    return-void
.end method

.method public a(Lag/d;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/dialog/q;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->i()V

    .line 41
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lag/m;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->dismiss()V

    .line 36
    return-void
.end method
