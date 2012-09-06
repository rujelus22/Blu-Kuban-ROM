.class Lcom/google/googlenav/ui/view/dialog/bk;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bh;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bk;->a:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bk;->a:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->a(Lcom/google/googlenav/ui/view/dialog/bh;)Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->g()V

    .line 101
    return-void
.end method
