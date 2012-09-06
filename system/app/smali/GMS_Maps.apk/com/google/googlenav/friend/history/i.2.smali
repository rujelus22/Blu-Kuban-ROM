.class Lcom/google/googlenav/friend/history/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/c;

.field final synthetic b:Lcom/google/googlenav/friend/history/g;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/g;Lcom/google/googlenav/friend/history/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/googlenav/friend/history/i;->b:Lcom/google/googlenav/friend/history/g;

    iput-object p2, p0, Lcom/google/googlenav/friend/history/i;->a:Lcom/google/googlenav/friend/history/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/google/googlenav/friend/history/v;->e()V

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/friend/history/i;->b:Lcom/google/googlenav/friend/history/g;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/g;->b(Lcom/google/googlenav/friend/history/g;)Lcom/google/googlenav/ui/view/dialog/aL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/history/i;->a:Lcom/google/googlenav/friend/history/c;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aL;->b(Lcom/google/googlenav/friend/history/l;)V

    .line 161
    return-void
.end method
