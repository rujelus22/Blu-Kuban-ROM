.class Lcom/google/googlenav/ui/friend/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/friend/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/friend/a;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/k;->a:Lcom/google/googlenav/ui/friend/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/k;->a:Lcom/google/googlenav/ui/friend/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/friend/a;->a(Lcom/google/googlenav/ui/friend/a;)Lcom/google/googlenav/ui/friend/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/friend/p;->e()V

    .line 481
    return-void
.end method
