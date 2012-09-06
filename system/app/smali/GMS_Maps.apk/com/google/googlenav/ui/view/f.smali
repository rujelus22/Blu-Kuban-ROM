.class Lcom/google/googlenav/ui/view/f;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lcom/google/googlenav/ui/view/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/googlenav/ui/view/f;->b:Lcom/google/googlenav/ui/view/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/f;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/view/f;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->a()V

    .line 172
    const/4 v0, 0x1

    return v0
.end method
