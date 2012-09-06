.class Lcom/google/googlenav/ui/view/dialog/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/k;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:Lcom/google/googlenav/ui/view/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/l;->a:Lcom/google/googlenav/ui/view/dialog/k;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/k;->a(Lcom/google/googlenav/ui/view/dialog/k;)Lcom/google/googlenav/ui/view/dialog/o;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_b

    .line 91
    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->d()V

    .line 93
    :cond_b
    return-void
.end method
