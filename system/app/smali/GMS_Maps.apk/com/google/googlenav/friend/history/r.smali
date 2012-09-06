.class Lcom/google/googlenav/friend/history/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/q;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    const v1, 0x7f1002cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/q;->b:Lcom/google/googlenav/friend/history/p;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    iget-object v1, v1, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/p;->b(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/q;->b:Lcom/google/googlenav/friend/history/p;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/r;->a:Lcom/google/googlenav/friend/history/q;

    iget-object v1, v1, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/history/p;->a(Lcom/google/googlenav/friend/history/p;Landroid/view/View;)V

    .line 103
    return-void
.end method
